const {
  utils: { getPackages }
} = require('@commitlint/config-lerna-scopes')

module.exports = {
  extends: ['@commitlint/config-conventional', '@commitlint/config-lerna-scopes'],
  rules: {
    // see: https://github.com/conventional-changelog/commitlint/blob/master/docs/reference-rules.md
    'scope-empty': [2, 'never'],
    'scope-enum': async (ctx) => [
      2,
      'always',
      [...(await getPackages(ctx)), 'release', 'deps', 'ci']
    ]
  },
  ignores: [
    (message) => /^Bumps \[.+]\(.+\) from .+ to .+\.$/m.test(message),
  ],
  helpUrl: 'https://github.com/Kong/public-shared-actions',
}
