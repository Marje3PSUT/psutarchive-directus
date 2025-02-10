#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source $SCRIPT_DIR/config.sh
source $SCRIPT_DIR/helpers/dump-utils.sh

LIQUIBASE_CHANGELOG=$(realpath -s --relative-to $(pwd) "$PROJECT_ROOT"liquibase/changelogs/changelog-master.xml)

if [ -z "$1" ]; then
  echo "Error: No argument provided. Please specify the issue number.."
  exit 1
fi

run_liquibase "${PROJECT_ROOT}"liquibase/changelogs $TMP_DIR "liquibase rollback --changelog-file changelogs/changelog-master.xml \
      --url jdbc:postgresql://localhost:5432/$DATABASE_NAME \
      --username $DATABASE_USER \
      --password $DATABASE_PASSWORD \
      --tag $1"