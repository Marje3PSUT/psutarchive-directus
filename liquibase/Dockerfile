FROM liquibase/liquibase:4.31

WORKDIR /changelogs
COPY changelogs /changelogs
CMD ["liquibase", "update", "--changelog-file", "changelog-master.xml"]