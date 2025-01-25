#!/bin/bash

source config.sh
source helpers/dump-utils.sh

echo "Deleting previous diffs..."
OLD_DIFFS=$(ls $TMP_DIR)
if [ -n "$OLD_DIFFS" ]; then
  ls $TMP_DIR/* | xargs rm
fi

SNAPSHOT_FILE="snapshot-before-$(date +%Y-%m-%dT%H:%M:%S).json"
liquibase snapshot --url jdbc:postgresql://localhost:5432/sampledb \
  --username $DB_USER \
  --password $DB_PASSWORD \
  --snapshot-format=json \
  --output-file "${TMP_DIR}temp.json"
mv ${TMP_DIR}temp.json ${TMP_DIR}${SNAPSHOT_FILE}

echo "Dumping the database from Docker container $CONTAINER_NAME..."
dump_database_from_docker "$CONTAINER_NAME" "$DB_USER" "$DUMP_BEFORE" "$DB_NAME" "$TMP_DIR" "${DATA_TABLES[@]}"
