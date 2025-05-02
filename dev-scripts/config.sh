#!/bin/bash
# shellcheck disable=SC2034

## Add directus variables here
export DB_CLIENT="pg"
export DB_HOST="localhost"
export DB_PORT="5432"
export DB_DATABASE=directus
export DB_USER=directus
export DB_PASSWORD=pass123
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
export TRANSLATIONS_PATH="/configs/translations"
export ASSETS_PATH="/configs/assets"
export CONTENT_SECURITY_POLICY_DIRECTIVES__CHILD_SRC="array:'self',blob:,https://*"
export CONTENT_SECURITY_POLICY_DIRECTIVES__IMG_SRC="array:'self',blob:,https://*,data:"

## dev-scripts-specific variables
export APP_CONTAINER_NAME="psutarchive-directus-dev"
export DB_CONTAINER_NAME="psutarchive-postgres-dev"
export VOLUME_NAME="psutarchive-postgres-dev"

export DATABASE_URL="jdbc:postgresql://localhost:5432/$DB_DATABASE"