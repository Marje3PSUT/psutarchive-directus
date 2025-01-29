#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source $SCRIPT_DIR/config.sh
source $PROJECT_ROOT/helpers/dump-utils.sh
create_tmp $TMP_DIR

echo "Deleting previous diffs..."
OLD_DIFFS=$(ls $TMP_DIR)
if [ -n "$OLD_DIFFS" ]; then
  ls $TMP_DIR/* | xargs rm
fi

SNAPSHOT_FILE="snapshot-before-$(date +%Y-%m-%dT%H:%M:%S).json"
liquibase snapshot --url jdbc:postgresql://localhost:5432/$DB_NAME \
  --username $DATABASE_USER \
  --password $DATABASE_PASSWORD \
  --snapshot-format=json \
  --output-file "${TMP_DIR}temp.json"
mv ${TMP_DIR}temp.json ${TMP_DIR}${SNAPSHOT_FILE}

echo "Dumping the database from Docker container $CONTAINER_NAME..."
dump_database_from_docker "$CONTAINER_NAME" "$DATABASE_USER" "$DUMP_BEFORE" "$DB_NAME" "$TMP_DIR" "${DATA_TABLES[@]}"
