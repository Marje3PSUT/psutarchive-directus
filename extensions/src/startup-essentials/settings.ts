import type { HookExtensionContext } from "@directus/extensions";
import type { SchemaOverview } from "@directus/types";
import { readFileSync } from "fs";
import yaml from "yaml";
import { getErrorMessage } from "../utils";
import { SETTINGS_ENV } from "../constants";

export const getMySettingsService = (
  { database, services, logger }: HookExtensionContext,
  schema: SchemaOverview
) => {
  const getSettingsFromYaml = () => {
    const path = process.env[SETTINGS_ENV];
    if (!path) {
      logger.error(`${SETTINGS_ENV} is not defined! Exiting..`);
      process.exit(1);
    }
    try {
      const parsedSettings = yaml.parse(readFileSync(path, "utf-8"))[
        "settings"
      ];
      parsedSettings["id"] = 1;
      return parsedSettings;
    } catch (e) {
      throw Error(`Error try to access ${path}: ${getErrorMessage(e)}`);
    }
  };

  async function applySettings() {
    const settings = getSettingsFromYaml();
    const { SettingsService } = services;
    const settingsService = new SettingsService({ database, schema });
    try {
      await settingsService.upsertOne(settings);
    } catch (e) {
      throw Error(`Error loading settings from env: ${getErrorMessage(e)}`);
    }
    logger.info("Successfully applied settings from env!");
  }

  return {
    applySettings,
  };
};
