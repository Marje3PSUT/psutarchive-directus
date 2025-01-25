#!/bin/bash

liquibase update --changelog-file ../liquibase/changelog-master.xml \
      --url jdbc:postgresql://localhost:5432/sampledb \
      --username admin \
      --password pass123