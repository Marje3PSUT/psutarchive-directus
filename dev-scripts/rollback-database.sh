#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source $SCRIPT_DIR/config.sh

LIQUIBASE_CHANGELOG=$(realpath -s --relative-to $(pwd) "$PROJECT_ROOT"liquibase/changelog-master.xml)

if [ -z "$1" ]; then
  echo "Error: No argument provided. Please specify the issue number.."
  exit 1
fi

liquibase rollback --changelog-file $LIQUIBASE_CHANGELOG \
      --url jdbc:postgresql://localhost:5432/$DB_NAME \
      --username $DATABASE_USER \
      --password $DATABASE_PASSWORD \
      --tag $1