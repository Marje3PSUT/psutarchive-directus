import sys
from helpers.utils import run_liquibase
from helpers import constants

ENV = constants.get_env()

def rollback_database():
  if len(sys.argv) < 2:
    print("Error: No argument provided. Please specify the issue number (rollback tag).")
    sys.exit(1)
  tag = sys.argv[1]
  run_liquibase([
    "rollback",
    "--changelog-file", "changelogs/changelog-master.xml",
    "--url", f"jdbc:postgresql://localhost:5432/{ENV['DB_DATABASE']}",
    "--username", ENV["DB_USER"],
    "--password", ENV["DB_PASSWORD"],
    "--tag", tag
  ])

rollback_database()