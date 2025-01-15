# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

# 6.0.0 (2025-01-15)


### ✨ Features

* **lua-lint:** add an option to make the action fail if the linting fails ([#121](https://github.com/Kong/public-shared-actions/issues/121)) ([a98be01](https://github.com/Kong/public-shared-actions/commit/a98be0184f832cb24a9dd233f99074e8ba17b488))
* **release:** independent releases for public shared actions ([#201](https://github.com/Kong/public-shared-actions/issues/201)) ([3d24b7f](https://github.com/Kong/public-shared-actions/commit/3d24b7f70c912df037063a571e59e789f4e49fc2))


### 🐛 Bug Fixes

* **lint:** does not specify global standard in luacheck command line arguments ([#57](https://github.com/Kong/public-shared-actions/issues/57)) ([2804623](https://github.com/Kong/public-shared-actions/commit/28046231055b99899d55d32eda2a5f4a6075db36))


### 📦 Code Refactoring

* **sca:** Separate linters and sca for rust ([#46](https://github.com/Kong/public-shared-actions/issues/46)) ([b037b99](https://github.com/Kong/public-shared-actions/commit/b037b9950d987b47b5caf3d418fa09ffc046e6ca))


### ♻️ Chores

* **ci:** configurable failure mode for semgrep ([#55](https://github.com/Kong/public-shared-actions/issues/55)) ([bc77fa6](https://github.com/Kong/public-shared-actions/commit/bc77fa65f43dfb6b3ef0b9d258c02faf5892aab1))
* **readme:** Add vulnerability migration and breakglass strategy for SCA and CVE action ([#107](https://github.com/Kong/public-shared-actions/issues/107)) ([ad89a25](https://github.com/Kong/public-shared-actions/commit/ad89a255ff44a03377215b8bccbfdc17c8c7fb46))
* **release:** publish [skip ci] ([5829780](https://github.com/Kong/public-shared-actions/commit/58297803d2f88ca94a0d3e25f740214b15da93ba))
* **release:** publish [skip ci] ([11e80bb](https://github.com/Kong/public-shared-actions/commit/11e80bb231ae182696a52f7ec7b0b9fae53303bf))


### Breaking changes

* **release:** - Each project within Public Shared Action is now treated as an independent package.
- Each package will have its own versioned release.
- Releases tag example "@security-actions/scan-docker-image@1.1.0".
- Markdown (.md) files will be ignored when determining changes for releases.





# 5.0.0 (2025-01-11)


### ✨ Features

* **lua-lint:** add an option to make the action fail if the linting fails ([#121](https://github.com/Kong/public-shared-actions/issues/121)) ([a98be01](https://github.com/Kong/public-shared-actions/commit/a98be0184f832cb24a9dd233f99074e8ba17b488))
* **release:** independent releases for public shared actions ([#201](https://github.com/Kong/public-shared-actions/issues/201)) ([3d24b7f](https://github.com/Kong/public-shared-actions/commit/3d24b7f70c912df037063a571e59e789f4e49fc2))


### 🐛 Bug Fixes

* **lint:** does not specify global standard in luacheck command line arguments ([#57](https://github.com/Kong/public-shared-actions/issues/57)) ([2804623](https://github.com/Kong/public-shared-actions/commit/28046231055b99899d55d32eda2a5f4a6075db36))


### 📦 Code Refactoring

* **sca:** Separate linters and sca for rust ([#46](https://github.com/Kong/public-shared-actions/issues/46)) ([b037b99](https://github.com/Kong/public-shared-actions/commit/b037b9950d987b47b5caf3d418fa09ffc046e6ca))


### ♻️ Chores

* **ci:** configurable failure mode for semgrep ([#55](https://github.com/Kong/public-shared-actions/issues/55)) ([bc77fa6](https://github.com/Kong/public-shared-actions/commit/bc77fa65f43dfb6b3ef0b9d258c02faf5892aab1))
* **readme:** Add vulnerability migration and breakglass strategy for SCA and CVE action ([#107](https://github.com/Kong/public-shared-actions/issues/107)) ([ad89a25](https://github.com/Kong/public-shared-actions/commit/ad89a255ff44a03377215b8bccbfdc17c8c7fb46))
* **release:** publish [skip ci] ([11e80bb](https://github.com/Kong/public-shared-actions/commit/11e80bb231ae182696a52f7ec7b0b9fae53303bf))


### Breaking changes

* **release:** - Each project within Public Shared Action is now treated as an independent package.
- Each package will have its own versioned release.
- Releases tag example "@security-actions/scan-docker-image@1.1.0".
- Markdown (.md) files will be ignored when determining changes for releases.





# 4.0.0 (2025-01-03)


### ✨ Features

* **release:** independent releases for public shared actions ([#201](https://github.com/Kong/public-shared-actions/issues/201)) ([3d24b7f](https://github.com/Kong/public-shared-actions/commit/3d24b7f70c912df037063a571e59e789f4e49fc2))


### Breaking changes

* **release:** - Each project within Public Shared Action is now treated as an independent package.
- Each package will have its own versioned release.
- Releases tag example "@security-actions/scan-docker-image@1.1.0".
- Markdown (.md) files will be ignored when determining changes for releases.



## 2.2.3 (2024-05-07)


### ✨ Features

* **lua-lint:** add an option to make the action fail if the linting fails ([#121](https://github.com/Kong/public-shared-actions/issues/121)) ([a98be01](https://github.com/Kong/public-shared-actions/commit/a98be0184f832cb24a9dd233f99074e8ba17b488))


### ♻️ Chores

* **readme:** Add vulnerability migration and breakglass strategy for SCA and CVE action ([#107](https://github.com/Kong/public-shared-actions/issues/107)) ([ad89a25](https://github.com/Kong/public-shared-actions/commit/ad89a255ff44a03377215b8bccbfdc17c8c7fb46))



# 1.15.0 (2024-01-22)



# 1.14.0 (2024-01-12)


### 🐛 Bug Fixes

* **lint:** does not specify global standard in luacheck command line arguments ([#57](https://github.com/Kong/public-shared-actions/issues/57)) ([2804623](https://github.com/Kong/public-shared-actions/commit/28046231055b99899d55d32eda2a5f4a6075db36))


### ♻️ Chores

* **ci:** configurable failure mode for semgrep ([#55](https://github.com/Kong/public-shared-actions/issues/55)) ([bc77fa6](https://github.com/Kong/public-shared-actions/commit/bc77fa65f43dfb6b3ef0b9d258c02faf5892aab1))



# 1.10.0 (2023-06-26)



# 1.8.0 (2023-06-26)


### 📦 Code Refactoring

* **sca:** Separate linters and sca for rust ([#46](https://github.com/Kong/public-shared-actions/issues/46)) ([b037b99](https://github.com/Kong/public-shared-actions/commit/b037b9950d987b47b5caf3d418fa09ffc046e6ca))
