#!/usr/bin/env python3

from helpers.utils import run_liquibase
from helpers import constants

ENV = constants.get_env()

def update_db():
  run_liquibase([
    "update",
      "--changelog-file", "changelogs/changelog-master.xml",
      "--url", f"jdbc:postgresql://localhost:5432/{ENV['DB_DATABASE']}",
      "--username", ENV["DB_USER"],
      "--password", ENV["DB_PASSWORD"]
  ])

update_db()