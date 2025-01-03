# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

# 5.0.0 (2025-01-03)


### ✨ Features

* **release:** independent releases for Public Shared Actions ([c945314](https://github.com/Kong/public-shared-actions/commit/c945314f424d1d8e53a1f7618266362630f03704))


### 📦 Code Refactoring

* **sca:** Separate linters and sca for rust ([#46](https://github.com/Kong/public-shared-actions/issues/46)) ([b037b99](https://github.com/Kong/public-shared-actions/commit/b037b9950d987b47b5caf3d418fa09ffc046e6ca))


### ♻️ Chores

* **ci:** run commitlint on main branch as well ([#104](https://github.com/Kong/public-shared-actions/issues/104)) ([a91dea7](https://github.com/Kong/public-shared-actions/commit/a91dea7716c4ddd92cafae5bee030b94f9ab170a))
* **deps:** bump github/codeql-action/upload-sarif from v2 to v3 ([9d9c93f](https://github.com/Kong/public-shared-actions/commit/9d9c93f3941969daff746687035bf8157514a300))


### Breaking changes

* **release:** - Each project within Public Shared Action is now treated as an independent package.
- Each package will have its own versioned release.
- Releases tag example "@security-actions/scan-docker-image@1.1.0".
- Markdown (.md) files will be ignored when determining changes for releases.

* feat(semgrep): update semgrep image name

* fix(ci): update filter file change step to exclude .md README .jpeg

* chore(deps): update dependencies and release workflow





# 4.0.0 (2025-01-03)


### ✨ Features

* **release:** independent releases for Public Shared Actions ([c945314](https://github.com/Kong/public-shared-actions/commit/c945314f424d1d8e53a1f7618266362630f03704))


### 📦 Code Refactoring

* **sca:** Separate linters and sca for rust ([#46](https://github.com/Kong/public-shared-actions/issues/46)) ([b037b99](https://github.com/Kong/public-shared-actions/commit/b037b9950d987b47b5caf3d418fa09ffc046e6ca))


### ♻️ Chores

* **deps:** bump github/codeql-action/upload-sarif from v2 to v3 ([9d9c93f](https://github.com/Kong/public-shared-actions/commit/9d9c93f3941969daff746687035bf8157514a300))


### Breaking changes

* **release:** - Each project within Public Shared Action is now treated as an independent package.
- Each package will have its own versioned release.
- Releases tag example "@security-actions/scan-docker-image@1.1.0".
- Markdown (.md) files will be ignored when determining changes for releases.

* feat(semgrep): update semgrep image name

* fix(ci): update filter file change step to exclude .md README .jpeg

* chore(deps): update dependencies and release workflow
