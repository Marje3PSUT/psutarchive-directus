import globals from 'globals';
import pluginJs from '@eslint/js';
import TSEslint from 'typescript-eslint';
import pluginVue from 'eslint-plugin-vue';
import eslintConfigPrettier from 'eslint-config-prettier';

/** @type {import('eslint').Linter.Config[]} */
export default [{
  files: ['src/**/*.{js,ts,vue}']
}, {
  ignores: ['**/node_modules/*', '**/dist/*', '**/shims.d.ts']
}, { languageOptions: { globals: { ...globals.browser, ...globals.node } } },
  pluginJs.configs.recommended, ...TSEslint.configs.recommended,
  ...pluginVue.configs['flat/essential'], {
    files: ['**/*.vue'],
    languageOptions: { parserOptions: { parser: TSEslint.parser } }
  }, eslintConfigPrettier, {
    rules: {
      'vue/multi-word-component-names': 'off'
    }
  }];