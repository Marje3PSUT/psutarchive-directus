// Year Validation
//
// This hook validates the year field in the resource collection to ensure
// that it's less than or equal to the current year.
//

import { defineHook } from "@directus/extensions-sdk";
import { createError } from "@directus/errors";
import { FilterHandler } from "@directus/types";
import { isNumber } from "lodash";

const COLLECTIONS = {
  resource: "year",
};

export default defineHook(({ filter }) => {
  Object.keys(COLLECTIONS).forEach((collectionName) => {
    filter(`${collectionName}.items.create`, handler);
    filter(`${collectionName}.items.update`, handler);
  });
});

const invalidPayloadError = createError(
  "INVALID_PAYLOAD_ERROR",
  "Year must be valid.",
  500
);

const handler: FilterHandler<Record<string, object>> = (
  payload,
  { collection }
) => {
  const collectionName = collection as keyof typeof COLLECTIONS;
  const yearFieldName = COLLECTIONS[collectionName];
  const yearValue = payload[yearFieldName];
  if (
    yearValue &&
    isNumber(yearValue) &&
    yearValue > new Date().getFullYear()
  ) {
    throw new invalidPayloadError();
  }
  return payload;
};
