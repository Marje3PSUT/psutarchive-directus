#!/usr/bin/env python3
import shutil
from datetime import datetime

from helpers import constants
from helpers.utils import run_liquibase, dump_database_from_docker

ENV = constants.get_env()


def set_starting_point():
  empty_tmp()
  snapshot_name = get_snapshot_name()
  run_liquibase([
    "snapshot",
    "--url", f"jdbc:postgresql://localhost:5432/{ENV['DB_DATABASE']}",
    "--username", ENV["DB_USER"],
    "--password", ENV["DB_PASSWORD"],
    "--snapshot-format=json",
    "--output-file", f"tmp/temp.json",
  ])
  temp_snapshot_path = constants.TMP_DIR / "temp.json"
  snapshot_path = constants.TMP_DIR / snapshot_name
  if temp_snapshot_path.exists():
    shutil.move(str(temp_snapshot_path), str(snapshot_path))
  print(f"Dumping the database from Docker container...")
  dump_database_from_docker(constants.DUMP_BEFORE)

def empty_tmp():
  for file in constants.TMP_DIR.iterdir():
    if file.is_file() and file.name != ".gitignore":
      file.unlink()


def get_snapshot_name():
  timestamp = datetime.now().strftime("%Y-%m-%dT%H:%M:%S")
  snapshot_file_name = f"snapshot-before-{timestamp}.json"
  return snapshot_file_name


set_starting_point()
