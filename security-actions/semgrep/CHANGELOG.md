# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

# 4.0.0 (2024-12-17)


### ✨ Features

* **release:** Independent releases for Public Shared Actions ([3f97ca9](https://github.com/Kong/public-shared-actions/commit/3f97ca95a2d8a4842db68578ea2f0846c25342fb))
* **SEC-1211:** update semgrep version ([#154](https://github.com/Kong/public-shared-actions/issues/154)) ([6d6e601](https://github.com/Kong/public-shared-actions/commit/6d6e6019a116933a92b20091e597eaf835104714))


### 🐛 Bug Fixes

* **semgrep:** update semgrep workflow ([#98](https://github.com/Kong/public-shared-actions/issues/98)) ([ceebe9c](https://github.com/Kong/public-shared-actions/commit/ceebe9c02d4791617ea397f59369b3e50b470850))


### ♻️ Chores

* **ci:** configurable failure mode for semgrep ([#55](https://github.com/Kong/public-shared-actions/issues/55)) ([bc77fa6](https://github.com/Kong/public-shared-actions/commit/bc77fa65f43dfb6b3ef0b9d258c02faf5892aab1))
* **deps:** bump github/codeql-action/upload-sarif from v2 to v3 ([9d9c93f](https://github.com/Kong/public-shared-actions/commit/9d9c93f3941969daff746687035bf8157514a300))
* **docs:** update semgrep readme ([#195](https://github.com/Kong/public-shared-actions/issues/195)) ([1a06695](https://github.com/Kong/public-shared-actions/commit/1a06695f203736707ff37957b7174d17402ed5ea))
* **readme:** Add vulnerability migration and breakglass strategy for SCA and CVE action ([#107](https://github.com/Kong/public-shared-actions/issues/107)) ([ad89a25](https://github.com/Kong/public-shared-actions/commit/ad89a255ff44a03377215b8bccbfdc17c8c7fb46))


### Breaking changes

* **release:** - Each project within Public Shared Action is now treated as an independent package.
- Each package will have its own versioned release.
- Releases tag example "@security-actions/scan-docker-image@1.1.0".
- Markdown (.md) files will be ignored when determining changes for releases.

* feat(semgrep): update semgrep image name

* fix(ci): update filter file change step to exclude .md README .jpeg
