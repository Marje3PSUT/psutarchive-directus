#!/bin/bash

DATA_TABLES=(
  "directus_permissions"
  "directus_roles"
  "directus_presets"
  "directus_panels"
  "directus_dashboards"
  "directus_operations"
  "directus_flows"
  "directus_fields"
  "directus_relations"
  "directus_collections"
  "directus_migrations"
)

CONTAINER_NAME="postgres-dev"
DB_URL="jdbc:postgresql://localhost:5432/sampledb"
DB_USER="admin"
DB_PASSWORD="pass123"
DB_NAME="sampledb"

TMP_DIR="../.tmp/"
DUMP_BEFORE="data-before.sql"
DUMP_AFTER="data-after.sql"
UP_CHANGELOG="up-changelog.xml"
DOWN_CHANGELOG="down-changelog.xml"
FINAL_CHANGELOG="final-changelog.xml"

DUMP_BEFORE_PATH="${TMP_DIR}data-before.sql"
DUMP_AFTER_PATH="${TMP_DIR}data-after.sql"
UP_CHANGELOG_PATH="${TMP_DIR}up-changelog.xml"
DOWN_CHANGELOG_PATH="${TMP_DIR}down-changelog.xml"
FINAL_CHANGELOG_PATH="${TMP_DIR}final-changelog.xml"
