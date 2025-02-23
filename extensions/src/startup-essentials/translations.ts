import type { HookExtensionContext } from "@directus/extensions";
import type { SchemaOverview } from "@directus/types";
import { readdirSync } from "node:fs";
import path from "node:path";
import { readFileSync } from "fs";
import { getErrorMessage } from "../utils";
import { TRANSLATIONS_PATH } from "../constants";

interface Translation {
  language: string;
  key: string;
  value: string;
}

type TranslationMap = Map<string, Record<string, string>>;
export const getMyTranslationsService = (
  { database, logger, services }: HookExtensionContext,
  schema: SchemaOverview
) => {
  function getTranslationsMap() {
    const files = readdirSync(TRANSLATIONS_PATH);
    const jsonFiles = files.filter((file) => file.endsWith(".json"));
    const jsonMap = new Map<string, Record<string, string>>();
    jsonFiles.forEach((file) => {
      const filePath = path.join(TRANSLATIONS_PATH, file);
      try {
        const fileContent = readFileSync(filePath, "utf-8");
        const parsedContent = JSON.parse(fileContent);
        const key = path.basename(file, ".json");
        jsonMap.set(key, parsedContent);
      } catch (e) {
        throw Error(
          `Error reading or parsing file ${file}: ${getErrorMessage(e)}`
        );
      }
    });

    return jsonMap;
  }

  function validateTranslations(map: TranslationMap) {
    if (map.size < 2) return;
    const referenceLanguageName = [...map.keys()][0] as string;
    const referenceObject = map.get(referenceLanguageName)!;
    const referenceKeys = Object.keys(referenceObject);
    for (const [language, obj] of map) {
      if (language == referenceLanguageName) continue;
      const objKeys = Object.keys(obj);
      if (
        objKeys.length !== referenceKeys.length ||
        !objKeys.every((key) => referenceKeys.includes(key))
      ) {
        throw new Error(
          `Mismatch in keys for language: ${language}. Expected keys: ${referenceKeys.join(
            ", "
          )} but got: ${objKeys.join(", ")}`
        );
      }
    }
  }

  function flattenTranslations(map: TranslationMap) {
    const result: Translation[] = [];
    map.forEach((translations, language) => {
      for (const key in translations) {
        result.push({
          language,
          key,
          value: translations[key] as string,
        });
      }
    });

    return result;
  }

  async function applyTranslations() {
    const map = getTranslationsMap();
    validateTranslations(map);
    const translations = flattenTranslations(map);
    const { TranslationsService } = services;
    const translationsService = new TranslationsService({ database, schema });
    try {
      await translationsService.deleteByQuery({ limit: -1 });
      await translationsService.createMany(translations);
    } catch (e) {
      throw Error(`Error loading translations from env: ${getErrorMessage(e)}`);
    }
    logger.info("Successfully applied translations from env!");
  }

  return {
    applyTranslations,
  };
};
