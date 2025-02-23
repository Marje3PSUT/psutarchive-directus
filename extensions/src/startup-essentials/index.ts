import { defineHook } from "@directus/extensions-sdk";
import { getMySettingsService } from "./settings";
import { getMyTranslationsService } from "./translations";
import { getMyAssetsService } from "./assets";
import { getErrorMessage } from "../utils";

export default defineHook(({ init }, context) => {
  init("cli.before", async () => {
    const { logger, getSchema } = context;
    const schema = await getSchema();
    const assetsService = getMyAssetsService(context, schema);
    const settingsService = getMySettingsService(context, schema);
    const translationsService = getMyTranslationsService(context, schema);

    try {
      await assetsService.uploadAssets();
      await settingsService.applySettings();
      await translationsService.applyTranslations();
    } catch (e) {
      logger.error(`Something went wrong: ${getErrorMessage(e)}`);
      process.exit(1);
    }
  });
});
