// Limit total upload
//
// This hook limit the total size of files uploaded by contributers
// to 50mbs per day (set MAX_PAYLOAD_SIZE per upload as env variable
// as well)
//

import { defineHook } from "@directus/extensions-sdk";
import {
  CONTRIBUTOR_ROLE_ID,
  MAX_UPLOAD_COUNT_DAY,
  MAX_UPLOAD_SIZE_DAY,
} from "../constants";
import type { EventContext, SchemaOverview, File } from "@directus/types";

export default defineHook(({ action }, { services }) => {
  const { ItemsService, FilesService } = services;

  action("files.upload", async ({ key }, context) => {
    const { schema, database, accountability } = context;
    const filesService = new FilesService({
      schema,
      knex: database,
      accountability,
    });

    const uploadedFilesLastDay = await getUploadedFilesLastDay(
      context,
      schema!
    );

    if (
      uploadedFilesLastDay.length > MAX_UPLOAD_COUNT_DAY ||
      uploadedFilesLastDay.reduce(
        (result: number, file: File) => (result + file.filesize),
        0
      ) /
        2 ** 20 >=
        MAX_UPLOAD_SIZE_DAY
    )
      await filesService.deleteOne(key);
  });

  const getUploadedFilesLastDay = async (
    { accountability, database }: EventContext,
    schema: SchemaOverview
  ) => {
    if (!accountability) return [];

    const userItemsService = new ItemsService("directus_users", {
      database,
      schema,
    });
    const fileItemsService = new ItemsService("directus_files", {
      database,
      schema,
    });

    const userEntity = await userItemsService.readOne(accountability.user, {
      fields: ["role.id"],
    });

    if (userEntity.role.id != CONTRIBUTOR_ROLE_ID) return [];

    const date = new Date();
    date.setHours(0, 0, 0, 0);

    return await fileItemsService.readByQuery({
      fields: ["filesize"],
      filter: {
        uploaded_by: {
          _eq: accountability.user,
        },

        uploaded_on: {
          _gte: date,
        },
      },
      limit: -1,
    });
  };
});
