FROM node:20-bookworm AS base
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

FROM base AS builder 

WORKDIR /app
COPY extensions/psutarchive-essentials/package.json .
RUN pnpm i
COPY extensions/psutarchive-essentials/ /app
RUN pnpm run build

FROM directus/directus:10.11.1

WORKDIR /directus
USER root
RUN corepack enable \
 && corepack prepare pnpm@8.9.0 --activate
RUN apk add tini
USER node
RUN pnpm add directus-extension-psutarchive-bundle@latest

COPY --from=builder /app/ extensions/psutarchive-essentials/
COPY translations/ ./translations

ENTRYPOINT ["/sbin/tini", "--"]
CMD : \
    && node cli.js bootstrap \
    && node cli.js start \
    ;