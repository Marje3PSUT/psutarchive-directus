default: help

.PHONY: help
help:
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done

.PHONY: temp-db
temp-db: create-network # Create a non-persistent db for testing purposes.
	bash -c 'source dev-scripts/config.sh && \
		docker run --rm --name "$$CONTAINER_NAME" \
		  -e POSTGRES_DB="$$DB_NAME" \
		  -e POSTGRES_USER="$$DB_USER" \
		  -e POSTGRES_PASSWORD="$$DB_PASSWORD" \
		  -p 5432:5432 \
		  --network="$$NETWORK_NAME" \
		  --tmpfs /var/lib/postgresql/data:rw \
		  postgres:17.2-alpine'

.PHONY: persistent-db
persistent-db: create-network # Create a persistent db for testing purposes.
	bash -c 'source dev-scripts/config.sh && \
		docker volume inspect $$VOLUME_NAME >/dev/null 2>&1 || docker volume create $$VOLUME_NAME && \
		docker run --rm --name "$$CONTAINER_NAME" \
		  -e POSTGRES_DB="$$DB_NAME" \
		  -e POSTGRES_USER="$$DB_USER" \
		  -e POSTGRES_PASSWORD="$$DB_PASSWORD" \
		  -p 5432:5432 \
		  -v $$VOLUME_NAME:/var/lib/postgresql/data \
		  --network="$$NETWORK_NAME" \
		  postgres:17.2-alpine'

clean: # Delete allocated resources (including persistent db data) if it exists.
	bash -c 'source dev-scripts/config.sh && \
		docker volume inspect "$$VOLUME_NAME" >/dev/null 2>&1 && docker volume rm "$$VOLUME_NAME" || echo "Volume does not exist." && \
		docker network inspect "$$NETWORK_NAME" >/dev/null 2>&1 && docker network rm "$$NETWORK_NAME" || echo "Network does not exist."'

# Helper command (not meant to be called directly)
create-network:
	bash -c 'source dev-scripts/config.sh && \
		docker network inspect "$$NETWORK_NAME" >/dev/null 2>&1 || docker network create "$$NETWORK_NAME"'