#!/usr/bin/env python3
import shutil
import subprocess
import sys

from helpers import constants
from helpers.utils import run_liquibase, dump_database_from_docker

ENV = constants.get_env()


def generate_changelog():
  if len(sys.argv) < 2:
    print("Error: No argument provided. Please specify the issue number.")
    sys.exit(1)
  issue_number = sys.argv[1]

  before_snapshot_file = _get_old_snapshot_file()
  if not before_snapshot_file:
    print(
        "No previous diff found!\nRun ./set-starting-point.py before making any changes.")
    sys.exit(1)

  _remove_old_changesets()
  before_snapshot_path = f"./tmp/{before_snapshot_file.name}"
  author = _get_author_name()
  run_liquibase(
      [
        "diffChangeLog",
        "--url", f"offline:postgresql?snapshot={before_snapshot_path}",
        "--changeLogFile", f"tmp/{constants.UP_CHANGELOG}",
        "--referenceUrl", ENV["DATABASE_URL"],
        "--referenceUsername", ENV["DB_USER"],
        "--referencePassword", ENV["DB_PASSWORD"],
        f"--author={author}"
      ]
  )
  run_liquibase(
      [
        "diffChangeLog",
        "--referenceUrl", f"offline:postgresql?snapshot={before_snapshot_path}",
        "--changeLogFile", f"tmp/{constants.DOWN_CHANGELOG}",
        "--url", ENV["DATABASE_URL"],
        "--username", ENV["DB_USER"],
        "--password", ENV["DB_PASSWORD"],
        f"--author={author}"
      ]
  )

  before_dump_file = _get_old_dump_file()
  if before_dump_file:
    print(
        f"Dumping the database from Docker container...")
    dump_database_from_docker(constants.DUMP_AFTER)

  up_contents = _extract_changelog_body(constants.UP_CHANGELOG_PATH)
  down_contents = _extract_changelog_body(constants.DOWN_CHANGELOG_PATH)
  _generate_from_template(author, down_contents, issue_number, up_contents,
                          (True if before_dump_file else False))
  _move_to_changelogs(issue_number)


def _move_to_changelogs(issue_number):
  target_dir = constants.CHANGELOG_DIR / issue_number
  target_dir.mkdir(parents=True, exist_ok=True)
  for item in target_dir.iterdir():
    if item.is_file():
      item.unlink()
  for f in constants.TMP_DIR.iterdir():
    if f.name in [constants.DUMP_BEFORE, constants.DUMP_AFTER,
                  constants.FINAL_CHANGELOG]:
      shutil.move(str(f), target_dir / f.name)


def _generate_from_template(author, down_contents, issue_number, up_contents,
    dump_present):
  constants.FINAL_CHANGELOG_PATH.write_text(
      f"""<?xml version="1.0" encoding="UTF-8"?>
    <databaseChangeLog
        xmlns="https://www.liquibase.org/xml/ns/dbchangelog"
        xmlns:xsi="https://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="https://www.liquibase.org/xml/ns/dbchangelog
                            https://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-4.31.xsd">

        <changeSet id="{issue_number}" author="{author}">
          {up_contents}
          
          {f'<sqlFile path="{constants.DUMP_AFTER}" relativeToChangelogFile="true"/>' if dump_present else ""}
          <rollback>
              {down_contents}
            {f'<sqlFile path="{constants.DUMP_BEFORE}" relativeToChangelogFile="true"/>' if dump_present else ""}
          </rollback>
        </changeSet>
        <changeSet id="{issue_number}-1" author="{author}">
          <tagDatabase tag="{issue_number}"/>
        </changeSet>
    </databaseChangeLog>
    """)


def _remove_old_changesets():
  for f in constants.TMP_DIR.iterdir():
    if f.is_file() and "before" not in f.name and f.name != ".gitignore":
      f.unlink()


def _get_old_snapshot_file():
  return next((f for f in constants.TMP_DIR.iterdir() if "snapshot" in f.name),
              None)


def _get_old_dump_file():
  return next(
      (f for f in constants.TMP_DIR.iterdir() if "data-before" in f.name), None)


def _get_author_name():
  try:
    author = subprocess.check_output(["git", "config", "user.name"],
                                     text=True).strip()
    if not author:
      raise ValueError("Git user.name is empty")
  except Exception:
    author = subprocess.check_output(["whoami"], text=True).strip()
  return author.replace(" ", "_")


def _extract_changelog_body(path):
  lines = path.read_text().splitlines()
  trimmed = lines[2:-1]
  return "\n".join(line for line in trimmed if "changeSet" not in line)


generate_changelog()
