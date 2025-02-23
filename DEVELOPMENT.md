# PSUTArchive Directus Development Guide

## Table of Contents
1. [Database Migration Workflow](#1-database-migration-workflow)
2. [Working with Extensions](#2-working-with-extensions)
3. [Managing Translations](#3-managing-translations)
4. [Example Workflows](#4-example-workflows)
---
## 1. Database Migration Workflow

### Developing the backend (through migrations)
1. Set up the database and app as follows:
   ```bash
   make clean
   make persistent-db      # or "temp-db" if desired
   
   # Separate terminal
   ./dev-scripts/update-database.sh
   make app                # or "app-dev" if developing extensions
   ```
2. Set a starting point:
   ```bash
   ./dev-scripts/set-starting-point.sh
   ```
3. Make your database changes via Directus Admin UI. Make changes as admin by running `make admin` and logging in using the values in the config.sh.
4. Generate a changeset for issue #XYZ:
   ```bash
   ./dev-scripts/generate-changelog.sh XYZ
   ```
5. Manually review generated files in `.tmp/` and move to `liquibase/changelogs/XYZ/`
6. Run the following to format all changelogs deterministically:
   ```bash
   cd liquibase
   npm install             # first time only
   npm run format
   ```
7. Test your changeset with a workflow similar to this:
   ```bash
   # After shutting down db and directus
   make clean
   make temp-db
   ./dev-scripts/update-database.sh
   # Manually test if upgrade was successful, and make necessary changes.
   # Test rolling back to previous issue
   ./dev-scripts/rollback-database.sh <THE_ISSUE_NUMBER_BEFORE_YOURS>
   ```

---

## 2. Working with Extensions

### Creating a New Extension
1. Create a new directory under `extensions/src/`
   ```bash
   mkdir extensions/src/my-new-hook
   ```
2. Implement your extension logic in `index.ts`
3. Register the extension in `package.json`
4. Develop and test the extension as follows
```
# Done once
make persistent-db
./dev-scripts/update-database.sh
make app-dev

cd extensions
npm run dev
```

---

## 3. Managing Translations
- Edit JSON files in `translations/` directory and rebuild `psutarchive-directus` docker image
- Make sure that all languages have the same keys.

---
## 4. Example Workflows
### Example 1: Adding a New Role
### Scenario
We want to add a new role called "Reviewer" to the Directus instance. This involves creating the role in the Directus Admin UI and generating a Liquibase changeset to version the database changes.
### Steps

1. **Set Starting Point**  
   Before making any changes, set a starting point for the database after deploying and updating it:
   ```bash
   ./dev-scripts/set-starting-point.sh
   ```

2. **Create the Role in Directus**  
   - Start the Directus instance:
  ```bash
  make app
  ```
  - Log in to the Directus Admin UI and create the "Reviewer" role with appropriate permissions.

3. **Generate Changeset**  
   After creating the role, generate a changeset for issue #15 (example issue number):
   ```bash
   ./dev-scripts/generate-changelog.sh 15
   ```

4. **Review Generated Files**  
   The script generates files in `.tmp/15/`. Review the files:
    - `.tmp/data-before.sql`: Contains the SQL dump before the changes (for rollbacks).
   - `.tmp/data-after.sql`: Contains the SQL dump after the changes.
   - `.tmp/final-changelog.xml`: Contains the Liquibase changeset.

5. **Move Changeset to Liquibase Directory**  
   Move the  changeset to the `liquibase/changelogs/15/` directory:
   ```bash
   mkdir -p liquibase/15
   mv .tmp/final-changelog.xml liquibase/15/
   mv .tmp/data-after.sql liquibase/15/
   mv .tmp/data-before.sql liquibase/15/
   ```

6. **Update Master Changelog**  
   Add the new changeset to `liquibase/changelogs/changelog-master.xml`:
   ```xml
   <include file="15/final-changelog.xml" relativeToChangelogFile="true"/>
   ```

7. **Test the Changeset**  
   Apply the changeset to a fresh database:
   ```bash
   make temp-db
   ./dev-scripts/update-database.sh
   make app
   ```
   Verify that the "Reviewer" role exists in the Directus Admin UI.
---

### Example 2: Bumping Directus Version
### Scenario
We want to upgrade Directus from version `10.7.2` to `10.8.0`. This involves testing the new version, generating a changeset for any schema changes, and ensuring compatibility with existing extensions.
### Steps

1. **Set Starting Point**  
   Before upgrading, set a starting point for the current database after deploying and updating:
   ```bash
   ./dev-scripts/set-starting-point.sh
   ```

2. **Update Dockerfile**  
   Edit the `Dockerfile` to use the new version:
   ```dockerfile
   FROM directus/directus:10.8.0
   ```

3. **Run Directus with New Version**  
   Start Directus with the updated version:
   ```bash
   make app
   ```

4. **Test Compatibility**  
   - Log in to the Directus Admin UI and verify that all existing roles, collections, and permissions are intact.
   - Test custom extensions to ensure they work with the new version.

5. **Generate Changeset**  
   If there are schema changes, generate a changeset for issue #20 (example issue number):
   ```bash
   ./dev-scripts/generate-changelog.sh 20
   ```

7. **Review Generated Files**  
   Review the files in `.tmp/20/`, making sure to add to the generated changeset if needed.

8. **Move Changeset
   Move the changeset to the `liquibase/changelogs/20/` directory:
   ```bash
   mkdir -p liquibase/20
   mv .tmp/20/final-changelog.xml liquibase/changelogs/20/
   mv .tmp/20/data-after.sql liquibase/changelogs/20/
   ```

9. **Update Master Changelog**  
   Add the new changeset to `liquibase/changelogs/changelog-master.xml`:
   ```xml
   <include file="20/final-changelog.xml" relativeToChangelogFile="true"/>
   ```

10. **Test the Upgrade**  
    Apply the changeset to a fresh database:
    ```bash
    make temp-db
    ./dev/scripts/update-database.sh
    make app
    ```
    Verify that the upgrade works as expected.