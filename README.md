# psutarchive-directus

This repository houses the [directus-schema-sync](https://github.com/bcc-code/directus-schema-sync) configuration for our directus backend.

## Initial Install
1- Create a new file called `.env` using `.example.env`

2- Run directus.\
`docker compose up`

3- Run this to install schema-sync to directus.\
`docker exec -it psutarchive-dev-directus npx directus schema-sync install`.

4- Get the admin role UUID and [create an admin user]((https://docs.directus.io/self-hosted/cli.html#creating-users)). Example:\
`docker exec -it psutarchive-dev-directus npx directus users create --email test@email.com --password Password123@ --role c9e50c86-d0f3-462a-850d-8872ea49fa09`

## Commands

Export: `docker exec -it psutarchive-dev-directus npx directus schema-sync import`

Import: `docker exec -it psutarchive-dev-directus npx directus schema-sync expo