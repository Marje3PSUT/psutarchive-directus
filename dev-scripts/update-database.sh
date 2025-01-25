#!/bin/bash

source config.sh

liquibase update --changelog-file ../liquibase/changelog-master.xml \
      --url jdbc:postgresql://localhost:5432/$DB_NAME \
      --username $DATABASE_USER \
      --password $DATABASE_PASSWORD
