#!/usr/bin/env python

from . import constants
import subprocess

ENV = constants.get_env()


def run_liquibase(liquibase_command: list[str]):
  subprocess.run(
      ["docker", "run", "--rm",
       "-v", f"{constants.CHANGELOG_DIR}:/liquibase/changelogs",
       "-v", f"{constants.TMP_DIR}:/liquibase/tmp",
       "--network", "host",
       "--user", "1000:1001",
       "liquibase/liquibase:4.31"] + liquibase_command, check=True)


def dump_database_from_docker(dump_file: str):
  dump_path = constants.TMP_DIR / dump_file
  dump_file_in_container = constants.Path("/tmp") / dump_file
  delete_statements = _get_delete_statements()
  table_params = _get_tables_parameter()

  _purge_old_dump_in_container(dump_file_in_container)
  _perform_dump(dump_file_in_container, table_params)
  _copy_dump_to_host(dump_file_in_container, dump_path)
  _prepend_dump_with_statements(delete_statements, dump_path)
  _replace_pgdump_null(dump_path)


def _replace_pgdump_null(dump_path):
  if dump_path.is_file():
    with dump_path.open("r", encoding="utf-8") as f:
      dump_content = f.read()
      dump_content = dump_content.replace("NULL::character varying", "NULL")
    with dump_path.open("w", encoding="utf-8") as f:
      f.write(dump_content)

def _prepend_dump_with_statements(delete_statements, dump_path):
  if dump_path.is_file():
    with dump_path.open("r", encoding="utf-8") as f:
      dump_content = f.read()
    with dump_path.open("w", encoding="utf-8") as f:
      f.write(delete_statements + "\n" + dump_content)


def _copy_dump_to_host(dump_file_in_container, dump_path):
  subprocess.run(
      ["docker", "cp",
       f"{ENV['DB_CONTAINER_NAME']}:{dump_file_in_container}",
       dump_path],
      check=True)


def _perform_dump(dump_file_in_container, table_params):
  constants.subprocess.run(
      ["docker", "exec", ENV["DB_CONTAINER_NAME"], "pg_dump",
       "--data-only", "--disable-triggers", "--column-inserts",
       "--no-comments", "--username", ENV["DB_USER"],
       "--file", dump_file_in_container,
       *table_params, ENV["DB_DATABASE"]], check=True)


def _purge_old_dump_in_container(dump_file_in_container):
  subprocess.run(
      ["docker", "exec", ENV["DB_CONTAINER_NAME"],
       "rm", "-f", dump_file_in_container], check=True)


def _get_tables_parameter():
  return [item for table1 in constants.DATA_TABLES for item in ("-t", table1)]


def _get_delete_statements():
  return "\n".join(
      f"DELETE FROM public.{table};" for table in constants.DATA_TABLES)
