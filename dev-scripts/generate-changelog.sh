#!/bin/bash

source config.sh
source helpers/dump-utils.sh
create_tmp $TMP_DIR

if [ -z "$1" ]; then
  echo "Error: No argument provided. Please specify the issue number.."
  exit 1
fi

DUMP_FILE=$(ls $TMP_DIR | grep data-before)
SNAPSHOT_FILE=$(ls $TMP_DIR/* | grep snapshot)
if [ -z "$DUMP_FILE" ] && [ -z "$SNAPSHOT_FILE" ]; then
  echo -e "No previous diff found!\nRun ./set-starting-point.sh before making any changes."
  exit 1
fi

OLD_CHANGESETS=$(ls $TMP_DIR | grep -v before)
if [ -n "$OLD_CHANGESETS" ]; then
  echo "Deleting old changesets in .tmp"
  ls $TMP_DIR/* | grep -v before | xargs rm
fi

echo "Generating a changeset reflecting changes since the last diff..."
liquibase diffChangeLog \
    --url "offline:postgresql?snapshot=${SNAPSHOT_FILE}" \
    --changeLogFile "$UP_CHANGELOG_PATH" \
    --referenceUrl "$DB_URL" \
    --referenceUsername "$DB_USER" \
    --referencePassword "$DB_PASSWORD" \
    --author="$(git config user.name)"
liquibase diffChangeLog \
    --referenceURL "offline:postgresql?snapshot=${SNAPSHOT_FILE}" \
    --changeLogFile "$DOWN_CHANGELOG_PATH" \
    --Url "$DB_URL" \
    --Username "$DB_USER" \
    --Password "$DB_PASSWORD" \
    --author="$(git config user.name)"


echo "Dumping the database from Docker container $CONTAINER_NAME..."
dump_database_from_docker "$CONTAINER_NAME" "$DB_USER" "$DUMP_AFTER" "$DB_NAME" "$TMP_DIR" "${DATA_TABLES[@]}"

up_contents=$(tail -n +3 "$UP_CHANGELOG_PATH" | head -n -1 | grep -v changeSet)
down_contents=$(tail -n +3 "$DOWN_CHANGELOG_PATH" | head -n -1 | grep -v changeSet)
cat <<EOF > "$FINAL_CHANGELOG_PATH"
<?xml version="1.0" encoding="UTF-8"?>
<databaseChangeLog
    xmlns="http://www.liquibase.org/xml/ns/dbchangelog"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog
                        http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-latest.xsd">

    <changeSet id="$1" author="$(git config user.name)">
      $up_contents
      <sqlFile path="$DUMP_AFTER" relativeToChangelogFile="true"/>

      <rollback>
          $down_contents
          <sqlFile path="$DUMP_BEFORE" relativeToChangelogFile="true"/>
      </rollback>
    </changeSet>
    <changeSet id="$1-1" author="$(git config user.name)">
      <tagDatabase tag="$1"/>
    </changeSet>
</databaseChangeLog>
EOF