import type { HookExtensionContext } from "@directus/extensions";
import type { File, SchemaOverview } from "@directus/types";
import { ASSETS_FOLDER_ID, ASSETS_PATH } from "../constants";
import * as fs from "node:fs";
import path from "node:path";
import { Readable } from "stream";
import * as mime from "mime-types";

export const getMyAssetsService = (
  { database, services, logger }: HookExtensionContext,
  schema: SchemaOverview
) => {
  const { FilesService } = services;
  const filesService = new FilesService({ database, schema });

  const toArray = (val: unknown) => {
    if (typeof val === "string") {
      return val.split(",");
    }
    return Array.isArray(val) ? val : [val];
  };

  const readFilesInDirectory = (directoryPath: string): Map<string, Buffer> => {
    const fileMap = new Map<string, Buffer>();
    const files = fs.readdirSync(directoryPath);
    files.forEach((file) => {
      const filePath = path.join(directoryPath, file);
      const fileContent = fs.readFileSync(filePath);
      fileMap.set(file, fileContent);
    });
    return fileMap;
  };

  const removeExtraAssets = async (
    localFiles: Map<string, Buffer>,
    existingFiles: File[]
  ) => {
    const localUUIDs = Array.from(localFiles.keys()).map(
      (file) => file.split(".")[0]
    );
    const filesToRemove = existingFiles.filter(
      (file) => !localUUIDs.includes(file.id)
    );
    if (filesToRemove.length !== 0) {
      const UUIDsToRemove = filesToRemove.map((file) => file.id);
      await filesService.deleteMany(UUIDsToRemove);
      logger.info(`Removed extra assets: ${UUIDsToRemove}`);
    }
  };

  const uploadMissingAssets = async (
    localFiles: Map<string, Buffer>,
    existingFiles: File[]
  ) => {
    const remoteUUIDs = existingFiles.map((file) => file.id);
    const uploadedFiles: string[] = [];
    for (const [fileName, fileContent] of localFiles) {
      const uuid = fileName.split(".")[0]!;
      if (!remoteUUIDs.includes(uuid)) {
        uploadedFiles.push(uuid);
        await filesService.uploadOne(
          Readable.from(fileContent),
          {
            id: uuid,
            filename_download: fileName,
            filename_disk: fileName,
            storage: toArray(process.env["STORAGE_LOCATIONS"] as string)[0]!,
            title: uuid,
            type: mime.lookup(fileName),
            folder: ASSETS_FOLDER_ID,
          },
          uuid
        );
      }
    }
    if (uploadedFiles.length != 0) {
      logger.info(`Uploaded the following assets: ${uploadedFiles}`);
    }
  };

  const uploadAssets = async () => {
    const localFiles = readFilesInDirectory(ASSETS_PATH);
    const existingFiles: File[] = await filesService.readByQuery({
      filter: {
        folder: {
          _eq: ASSETS_FOLDER_ID,
        },
      },
    });
    await removeExtraAssets(localFiles, existingFiles);
    await uploadMissingAssets(localFiles, existingFiles);
    logger.info("Successfully uploaded assets!");
  };

  return {
    uploadAssets,
  };
};
