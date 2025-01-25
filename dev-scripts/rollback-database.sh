#!/bin/bash

source config.sh

if [ -z "$1" ]; then
  echo "Error: No argument provided. Please specify the issue number.."
  exit 1
fi

liquibase rollback --changelog-file ../liquibase/changelog-master.xml \
      --url jdbc:postgresql://localhost:5432/$DB_NAME \
      --username $DATABASE_USER \
      --password $DATABASE_PASSWORD \
      --tag $1