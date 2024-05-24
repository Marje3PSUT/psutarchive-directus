FROM directus/directus:10.11.1

USER root

# Enable corepack and prepare pnpm
RUN corepack enable \
 && corepack prepare pnpm@8.9.0 --activate

USER node

# Install Directus extensions in a single pnpm command
# Force docker to skip caching to install the latest extentions
ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache

RUN pnpm add directus-extension-psutarchive-bundle@latest
RUN pnpm add directus-extension-schema-sync@latest
