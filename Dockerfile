FROM node:20-bookworm AS base
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN npm i -g corepack@latest
RUN corepack enable

FROM base AS builder 

WORKDIR /app
COPY extensions/package.json .
RUN pnpm install
COPY extensions/ /app
RUN pnpm run build

FROM directus/directus:10.11.1

USER root
RUN apk add tini
USER node
WORKDIR /directus
COPY --from=builder /app/ extensions/psutarchive-essentials/
COPY translations/ ./translations
COPY startup-files/assets ./assets

ENTRYPOINT ["/sbin/tini", "--" ]
CMD ["sh", "-c", "node cli.js bootstrap && exec node cli.js start"]