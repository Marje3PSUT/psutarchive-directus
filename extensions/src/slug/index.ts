// Slug
//
// This hook adds a slug field to the specified collections after each save
// and update.
//

import { defineHook } from "@directus/extensions-sdk";
import slugify from "@sindresorhus/slugify";

export default defineHook(({ filter }) => {
  Object.keys(COLLECTIONS).forEach((collectionName) => {
    filter(
      `${collectionName}.items.create`,
      (payload: Record<string, string>, context) =>
        handler(payload, context.collection)
    );
    filter(
      `${collectionName}.items.update`,
      (payload: Record<string, string>, context) =>
        handler(payload, context.collection)
    );
  });
});

const COLLECTIONS: Record<string, string> = {
  category: "name_en",
};

const handler = (payload: Record<string, string>, collection: string) => {
  const titleFieldName = COLLECTIONS[collection];
  if (titleFieldName && payload[titleFieldName]) {
    const slug = slugify(payload[titleFieldName]);
    return { ...payload, slug };
  }
  return payload;
};
