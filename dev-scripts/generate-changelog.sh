#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source $SCRIPT_DIR/config.sh
source $SCRIPT_DIR/helpers/dump-utils.sh
create_tmp $TMP_DIR

if [ -z "$1" ]; then
  echo "Error: No argument provided. Please specify the issue number.."
  exit 1
fi

DUMP_FILE=$(ls $TMP_DIR | grep data-before)
SNAPSHOT_FILE_PATH=$(ls $TMP_DIR/* | grep snapshot)
if [ -z "$DUMP_FILE" ] && [ -z "$SNAPSHOT_FILE_PATH" ]; then
  echo -e "No previous diff found!\nRun ./set-starting-point.sh before making any changes."
  exit 1
fi

OLD_CHANGESETS=$(ls $TMP_DIR | grep -v before)
if [ -n "$OLD_CHANGESETS" ]; then
  echo "Deleting old changesets in .tmp"
  ls $TMP_DIR/* | grep -v before | xargs rm
fi

SNAPSHOT_FILE="./tmp/$(ls $TMP_DIR/ | grep snapshot)"
echo "Generating a changeset reflecting changes since the last diff..."
run_liquibase "${PROJECT_ROOT}"liquibase/changelogs $TMP_DIR "liquibase diffChangeLog \
    --url offline:postgresql?snapshot=${SNAPSHOT_FILE} \
    --changeLogFile tmp/$UP_CHANGELOG \
    --referenceUrl $DATABASE_URL \
    --referenceUsername $DATABASE_USER \
    --referencePassword $DATABASE_PASSWORD \
    --author=$(git config user.name)"
run_liquibase "${PROJECT_ROOT}"liquibase/changelogs $TMP_DIR "liquibase diffChangeLog \
    --referenceURL offline:postgresql?snapshot=${SNAPSHOT_FILE} \
    --changeLogFile tmp/$DOWN_CHANGELOG \
    --url $DATABASE_URL \
    --username $DATABASE_USER \
    --password $DATABASE_PASSWORD \
    --author=$(git config user.name)"


echo "Dumping the database from Docker container $CONTAINER_NAME..."
dump_database_from_docker "$CONTAINER_NAME" "$DATABASE_USER" "$DUMP_AFTER" "$DB_NAME" "$TMP_DIR" "${DATA_TABLES[@]}"

sed -i 's/NULL::character varying/NULL/g' $UP_CHANGELOG_PATH
sed -i 's/NULL::character varying/NULL/g' $DOWN_CHANGELOG_PATH

up_contents=$(tail -n +3 "$UP_CHANGELOG_PATH" | head -n -1 | grep -v changeSet)
down_contents=$(tail -n +3 "$DOWN_CHANGELOG_PATH" | head -n -1 | grep -v changeSet)
cat <<EOF > "$FINAL_CHANGELOG_PATH"
<?xml version="1.0" encoding="UTF-8"?>
<databaseChangeLog
    xmlns="http://www.liquibase.org/xml/ns/dbchangelog"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog
                        https://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-4.31.xsd">

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