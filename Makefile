default: help

.PHONY: help
help:
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done

.PHONY: app
app: # Runs an instance of the backend (env in the config.sh)
	bash -c 'source dev-scripts/config.sh && \
		docker build -t psutarchive-directus:latest . && \
		docker run --rm --name $$APP_CONTAINER_NAME \
		--network host \
		--env-file <(env) \
		-v ./configs:/configs \
		psutarchive-directus:latest'

app-dev: # Runs an instance of the backend *with extension hot-reloads* (env in the config.sh)\n
	bash -c 'source dev-scripts/config.sh && \
		docker build -t psutarchive-directus:latest . && \
		docker run --rm --name $$APP_CONTAINER_NAME \
		--network host \
		--env-file <(env) \
		-v ./configs:/configs \
		-v ./extensions:/directus/extensions/psutarchive-essentials \
		psutarchive-directus:latest'

.PHONY: admin
admin: # Generate an admin account (based on env in the config.sh)
	bash -c 'source dev-scripts/config.sh && \
		docker exec $$APP_CONTAINER_NAME node cli.js users create --email $$ADMIN_EMAIL \
		--password $$ADMIN_PASSWORD --role c9e50c86-d0f3-462a-850d-8872ea49fa09'

.PHONY: contrib
contrib: # Generate a contributor account (based on env in the config.sh)
	bash -c 'source dev-scripts/config.sh && \
		docker exec $$APP_CONTAINER_NAME node cli.js users create --email $$CONTRIBUTOR_EMAIL \
		--password $$CONTRIBUTOR_PASSWORD --role 46ee07b4-b91a-40cd-be4b-94dcd16af0bd'

.PHONY: mod
mod: # Generate a moderator account (based on env in the config.sh)\n
	bash -c 'source dev-scripts/config.sh && \
		docker exec $$APP_CONTAINER_NAME node cli.js users create --email $$MODERATOR_EMAIL \
		--password $$MODERATOR_PASSWORD --role c26ce4ed-9eea-4b1a-9f74-6496c3f105e4'

.PHONY: temp-db
temp-db: # Create a non-persistent db for testing purposes.
	bash -c 'source dev-scripts/config.sh && \
		docker run --rm --name "$$CONTAINER_NAME" \
		  -e POSTGRES_DB="$$DB_NAME" \
		  -e POSTGRES_USER="$$DATABASE_USER" \
		  -e POSTGRES_PASSWORD="$$DATABASE_PASSWORD" \
		  --network host \
		  --tmpfs /var/lib/postgresql/data:rw \
		  postgres:17.2-alpine'

.PHONY: persistent-db
persistent-db: # Create a persistent db for testing purposes.
	bash -c 'source dev-scripts/config.sh && \
		docker volume inspect $$VOLUME_NAME >/dev/null 2>&1 || docker volume create $$VOLUME_NAME && \
		docker run --rm --name "$$CONTAINER_NAME" \
		  -e POSTGRES_DB="$$DB_NAME" \
		  -e POSTGRES_USER="$$DATABASE_USER" \
		  -e POSTGRES_PASSWORD="$$DATABASE_PASSWORD" \
		  --network host \
		  -v $$VOLUME_NAME:/var/lib/postgresql/data \
		  postgres:17.2-alpine'

clean: # Cleanup all resources used.
	bash -c 'source dev-scripts/config.sh && \
		docker volume inspect "$$VOLUME_NAME" >/dev/null 2>&1 && docker volume rm "$$VOLUME_NAME" || echo "Volume does not exist." && \
		docker container inspect "$$APP_CONTAINER_NAME" >/dev/null 2>&1 && docker container stop "$$APP_CONTAINER_NAME" || echo "Directus is not running." && \
		docker container inspect "$$CONTAINER_NAME" >/dev/null 2>&1 && docker container stop "$$CONTAINER_NAME" || echo "Db is not running."'
