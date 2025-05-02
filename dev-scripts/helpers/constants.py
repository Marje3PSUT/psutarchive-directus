from pathlib import Path
import subprocess

DATA_TABLES = [
  "directus_permissions",
  "directus_roles",
  "directus_presets",
  "directus_panels",
  "directus_dashboards",
  "directus_operations",
  "directus_flows",
  "directus_fields",
  "directus_relations",
  "directus_collections",
  "directus_migrations",
  "directus_extensions",
]

PROJECT_ROOT = Path(__file__).resolve().parent.parent.parent
CONFIG_SH_PATH = PROJECT_ROOT / "dev-scripts" / "config.sh"
TMP_DIR = PROJECT_ROOT / ".tmp"
CHANGELOG_DIR = PROJECT_ROOT / "liquibase" / "changelogs"

DUMP_BEFORE = "data-before.sql"
DUMP_AFTER = "data-after.sql"
UP_CHANGELOG = "up-changelog.xml"
DOWN_CHANGELOG = "down-changelog.xml"
FINAL_CHANGELOG = "final-changelog.xml"

DUMP_BEFORE_PATH = TMP_DIR / DUMP_BEFORE
DUMP_AFTER_PATH = TMP_DIR / DUMP_AFTER
UP_CHANGELOG_PATH = TMP_DIR / UP_CHANGELOG
DOWN_CHANGELOG_PATH = TMP_DIR / DOWN_CHANGELOG
FINAL_CHANGELOG_PATH = TMP_DIR / FINAL_CHANGELOG

_env = {}

def get_env():
  global _env
  if _env:
    return _env
  result = subprocess.run(
      ['bash', '-c', f'source {CONFIG_SH_PATH} && env'],
      capture_output=True,
      text=True
  )
  if result.returncode != 0:
    raise RuntimeError(f"Error running script: {result.stderr}")
  env_vars = {}
  for line in result.stdout.splitlines():
    if '=' in line:
      key, value = line.split('=', 1)
      env_vars[key] = value
  _env = env_vars
  return _env
