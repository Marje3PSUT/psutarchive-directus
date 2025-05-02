import {defineHook} from '@directus/extensions-sdk';
import { getMySettingsService } from './settings';
import { getMyTranslationsService } from './translations';
import { getMyAssetsService } from './assets';
import { getErrorMessage } from '../utils';

export default defineHook(({init}, context) => {
  init("cli.before", async () => {
    const { logger,  getSchema } = context;
    const schema = await getSchema()
    const mySettingsService = getMySettingsService(context, schema)
    const myTranslationsService = getMyTranslationsService(context, schema)
    const myAssetsService = getMyAssetsService(context, schema)
    try {
      await myAssetsService.uploadAssets();
      await mySettingsService.applySettings();
      await myTranslationsService.applyTranslations();
    }
    catch (e) {
      logger.error(`Something went wrong: ${getErrorMessage(e)}`)
      process.exit(1)
    }
  })
})

