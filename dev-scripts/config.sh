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

APP_CONTAINER_NAME="psutarchive-directus-dev"
CONTAINER_NAME="psutarchive-postgres-dev"
NETWORK_NAME="psutarchive-postgres-dev"
VOLUME_NAME="psutarchive-postgres-dev"

DATABASE_URL="jdbc:postgresql://localhost:5432/directus"
DATABASE_USER="directus"
DATABASE_PASSWORD="pass123"
DATABASE_NAME="directus"

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


## Add directus variables here
export DB_CLIENT="pg"
export DB_HOST="localhost"
export DB_PORT="5432"
export DB_DATABASE=$DATABASE_NAME
export DB_USER=$DATABASE_USER
export DB_PASSWORD=$DATABASE_PASSWORD
export SECRET="your-secret-key"

export ADMIN_EMAIL="admin@email.com"
export ADMIN_PASSWORD="123"
export CONTRIBUTOR_EMAIL="contributor@email.com"
export CONTRIBUTOR_PASSWORD="123"
export MODERATOR_EMAIL="moderator@email.com"
export MODERATOR_PASSWORD="123"

export WEBSOCKETS_ENABLED="true"
export CACHE_ENABLED="true"
export CACHE_STORE="database"
export STORAGE_LOCAL_ROOT="./uploads"
export AUTH_PROVIDERS="local"
export SETTINGS_FILE_PATH="/configs/settings.yaml"
export TRANSLATIONS_PATH="/translations"
