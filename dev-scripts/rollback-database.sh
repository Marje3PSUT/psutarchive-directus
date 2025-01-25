#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: No argument provided. Please specify the issue number.."
  exit 1
fi

liquibase rollback --changelog-file ../liquibase/changelog-master.xml \
      --url jdbc:postgresql://localhost:5432/sampledb \
      --username admin \
      --password pass123 \
      --tag $1