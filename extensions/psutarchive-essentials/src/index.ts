import {defineHook} from '@directus/extensions-sdk';
import {readFileSync} from "fs";
import yaml from 'yaml'
import {SchemaOverview} from "@directus/types";
import {readdirSync} from "node:fs";
import path from "node:path";

interface Translation {
  language: string,
  key: string,
  value: string
}

export default defineHook(({init}, {logger, services, database, getSchema}) => {
  const SETTINGS_ENV = "SETTINGS_FILE_PATH"
  const TRANSLATIONS_PATH = "./translations"

  function getSettingsFromYaml() {
    const path = process.env[SETTINGS_ENV];
    if (!path) {
      logger.error(`${SETTINGS_ENV} is not defined! Exiting..`)
      process.exit(1)
    }
    try {
      let parsedSettings = yaml.parse(readFileSync(path, 'utf-8'))["settings"];
      parsedSettings["id"] = 1
      return parsedSettings;
    } catch (e) {
      throw Error(`Error try to access ${path}: ${e["message"]}`)
    }
  }

  async function applySettings(schema: SchemaOverview) {
    let settings = getSettingsFromYaml()
    const {SettingsService} = services;
    const settingsService = new SettingsService({database, schema})
    try {
      delete settings["module_bar"]
      await settingsService.upsertOne(settings);
    } catch (e) {
      throw Error(`Error loading settings from env: ${e["message"]}`)
    }
    logger.info("Successfully applied Settings from env!")
  }

  function getTranslationsMap() {
    let folderPath = TRANSLATIONS_PATH;
    const files = readdirSync(folderPath);
    const jsonFiles = files.filter(file => file.endsWith('.json'));
    const jsonMap = new Map<string, any>();
    jsonFiles.forEach(file => {
      const filePath = path.join(folderPath, file);
      try {
        const fileContent = readFileSync(filePath, 'utf-8');
        const parsedContent = JSON.parse(fileContent);
        const key = path.basename(file, '.json');
        jsonMap.set(key, parsedContent);
      } catch (e) {
        throw Error(`Error reading or parsing file ${file}: ${e["message"]}`);
      }
    });
    return jsonMap
  }

  function validateTranslations(map: Map<string, any>) {
    if (map.size < 2) return;
    const referenceObject = map.get([...map.keys()][0]);
    const referenceKeys = Object.keys(referenceObject);
    for (const [language, obj] of map) {
      const objKeys = Object.keys(obj);
      if (objKeys.length !== referenceKeys.length || !objKeys.every(key => referenceKeys.includes(key))) {
        throw new Error(`Mismatch in keys for language: ${language}. Expected keys: ${referenceKeys.join(', ')} but got: ${objKeys.join(', ')}`);
      }
    }
  }

  function flattenTranslations(map: Map<string, any>) {
    let result: Translation[] = []
    map.forEach((translations, language) => {
      for (const key in translations) {
        if (translations.hasOwnProperty(key)) {
          const value = translations[key];
          result.push({
            language, key, value: value as string,
          });
        }
      }
    });
    return result
  }

  async function applyTranslations(schema: SchemaOverview) {
    let map = getTranslationsMap();
    validateTranslations(map)
    let translations = flattenTranslations(map)
    const {TranslationsService} = services;
    const translationsService = new TranslationsService({database, schema})
    try {
      await translationsService.deleteByQuery({limit: -1})
      await translationsService.createMany(translations)
    } catch (e) {
      throw Error(`Error loading translations from env: ${e["message"]}`)
    }
    logger.info("Successfully applied translations from env!")
  }

  init("cli.before", async () => {
    const schema = await getSchema()

    try {
      await applySettings(schema);
      await applyTranslations(schema);
    }
    catch (e) {
      logger.error(`Something went wrong: ${e["message"]}`)
      process.exit(1)
    }
  })
})

