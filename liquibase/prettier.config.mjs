/** @type {import('prettier').Config} */
const prettierConfig = {
  "plugins": [
    "prettier-plugin-sql",
    "@prettier/plugin-xml"
  ]
}

/** @type {import('prettier-plugin-sql').SqlBaseOptions} */
const prettierPluginSqlConfig = {
  language: 'postgresql',
  keywordCase: 'upper',
  expressionWidth: 999999,
  linesBetweenQueries: 0,
  logicalOperatorNewline: "after",
  newlineBeforeSemicolon: false
}

const config = {
  ...prettierConfig,
  ...prettierPluginSqlConfig,
}

export default config