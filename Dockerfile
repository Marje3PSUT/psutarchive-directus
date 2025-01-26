FROM node:20-bookworm AS base
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

FROM base AS builder 

WORKDIR /app
COPY extensions/package.json .
COPY extensions/patches patches/
RUN pnpm i
COPY extensions/ /app
RUN pnpm run build

FROM directus/directus:10.11.1

USER root
RUN apk add tini
USER node

WORKDIR /directus

COPY --from=builder /app/ extensions/psutarchive-essentials/
COPY translations/ ./translations

ENTRYPOINT ["/sbin/tini", "--" ]
CMD node cli.js bootstrap \
    && node cli.js start