// Module permissions
//
// This hook ensures that only the admin will be able to see the
// files module.
//

import { defineHook } from "@directus/extensions-sdk";
import type { Settings } from "@directus/types";

export default defineHook(({ filter }) => {
  filter(
    "settings.read",
    async (items: Settings[], _meta, { accountability }) => {
      if (accountability && !accountability.admin) {
        const settings = items[0]!;
        settings.module_bar = settings.module_bar.map((module) => {
          if (module.id === "files") {
            module.enabled = false;
          }
          return module;
        });
      }
      return items;
    }
  );
});
