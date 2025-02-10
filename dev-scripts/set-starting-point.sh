#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source $SCRIPT_DIR/config.sh
source $SCRIPT_DIR/helpers/dump-utils.sh
create_tmp $TMP_DIR

echo "Deleting previous diffs..."
OLD_DIFFS=$(ls $TMP_DIR)
if [ -n "$OLD_DIFFS" ]; then
  ls $TMP_DIR/* | xargs rm
fi

SNAPSHOT_FILE="snapshot-before-$(date +%Y-%m-%dT%H:%M:%S).json"
run_liquibase "${PROJECT_ROOT}"liquibase/changelogs $TMP_DIR "liquibase snapshot --url jdbc:postgresql://localhost:5432/$DATABASE_NAME \
  --username $DATABASE_USER \
  --password $DATABASE_PASSWORD \
  --snapshot-format=json \
  --output-file tmp/temp.json"
mv ${TMP_DIR}temp.json ${TMP_DIR}${SNAPSHOT_FILE}

echo "Dumping the database from Docker container $CONTAINER_NAME..."
dump_database_from_docker "$CONTAINER_NAME" "$DATABASE_USER" "$DUMP_BEFORE" "$DB_NAME" "$TMP_DIR" "${DATA_TABLES[@]}"
