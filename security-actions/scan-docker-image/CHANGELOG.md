# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## [5.0.10](https://github.com/Kong/public-shared-actions/compare/@security-actions/scan-docker-image@5.0.9...@security-actions/scan-docker-image@5.0.10) (2025-01-07)


### ♻️ Chores

* **release:** update slack message ([699c504](https://github.com/Kong/public-shared-actions/commit/699c504403b3c68c9211aeb83156b16d3ec6c28a))





## [5.0.9](https://github.com/Kong/public-shared-actions/compare/@security-actions/scan-docker-image@5.0.8...@security-actions/scan-docker-image@5.0.9) (2025-01-07)


### ♻️ Chores

* **release:** update slack message ([9787fe5](https://github.com/Kong/public-shared-actions/commit/9787fe58884ee36b479217a4c712cd4090e7e212))





## [5.0.8](https://github.com/Kong/public-shared-actions/compare/@security-actions/scan-docker-image@5.0.7...@security-actions/scan-docker-image@5.0.8) (2025-01-07)


### ♻️ Chores

* **release:** update slack message ([90f7f70](https://github.com/Kong/public-shared-actions/commit/90f7f70211dc1540c9e2cce7ca4b48b2fe16cd17))





## [5.0.7](https://github.com/Kong/public-shared-actions/compare/@security-actions/scan-docker-image@5.0.6...@security-actions/scan-docker-image@5.0.7) (2025-01-07)


### ♻️ Chores

* **release:** update slack message ([35c440b](https://github.com/Kong/public-shared-actions/commit/35c440bc674f099e2324466533277bf4dd0876d2))





## [5.0.6](https://github.com/Kong/public-shared-actions/compare/@security-actions/scan-docker-image@5.0.5...@security-actions/scan-docker-image@5.0.6) (2025-01-07)


### ♻️ Chores

* **release:** update slack message ([571fbf8](https://github.com/Kong/public-shared-actions/commit/571fbf8149c97d4141cd38b14d2561a491142d8b))





## [5.0.5](https://github.com/Kong/public-shared-actions/compare/@security-actions/scan-docker-image@5.0.4...@security-actions/scan-docker-image@5.0.5) (2025-01-07)


### ♻️ Chores

* **release:** update slack message ([3e455f7](https://github.com/Kong/public-shared-actions/commit/3e455f7e42d6d1d08817eb9180d75e7cf9a80043))





## [5.0.4](https://github.com/Kong/public-shared-actions/compare/@security-actions/scan-docker-image@5.0.3...@security-actions/scan-docker-image@5.0.4) (2025-01-07)


### ♻️ Chores

* **release:** update slack message ([7ab321b](https://github.com/Kong/public-shared-actions/commit/7ab321b83e2dc3a72f226b75188990867586cf9d))





## [5.0.3](https://github.com/Kong/public-shared-actions/compare/@security-actions/scan-docker-image@5.0.2...@security-actions/scan-docker-image@5.0.3) (2025-01-07)


### ♻️ Chores

* **release:** update slack message ([422c6db](https://github.com/Kong/public-shared-actions/commit/422c6dbccbfb32fe6f61839dc88eb4921b711ef9))





## [5.0.2](https://github.com/Kong/public-shared-actions/compare/@security-actions/scan-docker-image@5.0.1...@security-actions/scan-docker-image@5.0.2) (2025-01-07)


### ♻️ Chores

* **release:** update slack message ([9e70d9f](https://github.com/Kong/public-shared-actions/commit/9e70d9f11deb6409c437cdac85c857340e799e63))





## [5.0.1](https://github.com/Kong/public-shared-actions/compare/@security-actions/scan-docker-image@5.0.0...@security-actions/scan-docker-image@5.0.1) (2025-01-07)


### ♻️ Chores

* **release:** update slack message ([49cf8ed](https://github.com/Kong/public-shared-actions/commit/49cf8ed6b6455d90c7b9c6faae263763a1ce3e35))





# 5.0.0 (2025-01-07)


### ✨ Features

* **cd:** add trivy docker-cis scan ([#1](https://github.com/Kong/public-shared-actions/issues/1)) ([84f743c](https://github.com/Kong/public-shared-actions/commit/84f743cf7cfdf5e75dc81e5c158c7e3d6181ced4))
* **cd:** Use pinned tags instead of latest  ([4b6870c](https://github.com/Kong/public-shared-actions/commit/4b6870cbdd4a0c8b78d77e9a210de7fa9eecc18d))
* ingore unfixed for trivy image scan ([#51](https://github.com/Kong/public-shared-actions/issues/51)) ([1c1db81](https://github.com/Kong/public-shared-actions/commit/1c1db81d4bc99d8c87058fba34203419a0fd0604))
* input to skip Trivy scan  ([#156](https://github.com/Kong/public-shared-actions/issues/156)) ([ecbcd70](https://github.com/Kong/public-shared-actions/commit/ecbcd7051e12e6e3dc37dc890820bbce457bc05f))
* **release:** independent releases for public shared actions ([#201](https://github.com/Kong/public-shared-actions/issues/201)) ([3d24b7f](https://github.com/Kong/public-shared-actions/commit/3d24b7f70c912df037063a571e59e789f4e49fc2))
* **security-actions/scan-docker-image:** support `trivy_db_cache` as alternate ([#184](https://github.com/Kong/public-shared-actions/issues/184)) ([0ccacff](https://github.com/Kong/public-shared-actions/commit/0ccacffed804d85da3f938a1b78c12831935f992))


### 🐛 Bug Fixes

* **cd:** only pass input flag to trivy action when docker tar is present ([cbe4f65](https://github.com/Kong/public-shared-actions/commit/cbe4f65b04769cf67756f52984fc8508207d5f64))
* **ci:** Fix grype output file and dependency ([#38](https://github.com/Kong/public-shared-actions/issues/38)) ([45d3c9a](https://github.com/Kong/public-shared-actions/commit/45d3c9a9e2e8ea822429c745f9cd755e38879752))
* omitted severity flags in docker image scan action ([#142](https://github.com/Kong/public-shared-actions/issues/142)) ([f19e9a7](https://github.com/Kong/public-shared-actions/commit/f19e9a7b75f547a5908e658627650a2175340dca))


### ⚙️ Continuous Integrations

* **.github:** deprecate reuse of sca scan action in docker image scan ([#95](https://github.com/Kong/public-shared-actions/issues/95)) ([60c9b13](https://github.com/Kong/public-shared-actions/commit/60c9b136104671b7091b2306c599d80fec34ae3f))
* **.github:** fix sca action path and ref for image scan ([#93](https://github.com/Kong/public-shared-actions/issues/93)) ([17456e7](https://github.com/Kong/public-shared-actions/commit/17456e74cf062b1d29d751331d8e2f5ac5baedd4))
* **.github:** generalize sca scan for non docker artifacts ([#89](https://github.com/Kong/public-shared-actions/issues/89)) ([7f27a2b](https://github.com/Kong/public-shared-actions/commit/7f27a2becf7cfbda29125107f07b1482fabe3b77))


### ♻️ Chores

* **docs:** update readme to include trivy docker-cis ([ab12bb2](https://github.com/Kong/public-shared-actions/commit/ab12bb2e88ed367ab47d1110f698cbfa3c68c0c5))
* **readme:** Add usage examples to security actions ([#106](https://github.com/Kong/public-shared-actions/issues/106)) ([d9e10a3](https://github.com/Kong/public-shared-actions/commit/d9e10a320e1fe023ac52e380d349b26bba67152b))
* **readme:** Add vulnerability migration and breakglass strategy for SCA and CVE action ([#107](https://github.com/Kong/public-shared-actions/issues/107)) ([ad89a25](https://github.com/Kong/public-shared-actions/commit/ad89a255ff44a03377215b8bccbfdc17c8c7fb46))
* **release:** publish [skip ci] ([11e80bb](https://github.com/Kong/public-shared-actions/commit/11e80bb231ae182696a52f7ec7b0b9fae53303bf))
* **sbom-action:** bump sbom action to 0.13.4 ([396a2e4](https://github.com/Kong/public-shared-actions/commit/396a2e4e87b05d84df19455395a64b5aa2a967a5))


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



# 2.8.0 (2024-12-02)


### ✨ Features

* **security-actions/scan-docker-image:** support `trivy_db_cache` as alternate ([#184](https://github.com/Kong/public-shared-actions/issues/184)) ([0ccacff](https://github.com/Kong/public-shared-actions/commit/0ccacffed804d85da3f938a1b78c12831935f992))



# 2.6.0 (2024-09-19)


### ✨ Features

* input to skip Trivy scan  ([#156](https://github.com/Kong/public-shared-actions/issues/156)) ([ecbcd70](https://github.com/Kong/public-shared-actions/commit/ecbcd7051e12e6e3dc37dc890820bbce457bc05f))



## 2.5.1 (2024-09-03)



# 2.5.0 (2024-08-27)


### 🐛 Bug Fixes

* omitted severity flags in docker image scan action ([#142](https://github.com/Kong/public-shared-actions/issues/142)) ([f19e9a7](https://github.com/Kong/public-shared-actions/commit/f19e9a7b75f547a5908e658627650a2175340dca))



## 2.4.1 (2024-08-22)



# 2.4.0 (2024-08-16)



# 2.3.0 (2024-05-20)



## 2.2.1 (2024-04-17)



# 2.2.0 (2024-04-16)


### ♻️ Chores

* **readme:** Add usage examples to security actions ([#106](https://github.com/Kong/public-shared-actions/issues/106)) ([d9e10a3](https://github.com/Kong/public-shared-actions/commit/d9e10a320e1fe023ac52e380d349b26bba67152b))
* **readme:** Add vulnerability migration and breakglass strategy for SCA and CVE action ([#107](https://github.com/Kong/public-shared-actions/issues/107)) ([ad89a25](https://github.com/Kong/public-shared-actions/commit/ad89a255ff44a03377215b8bccbfdc17c8c7fb46))



## 2.0.3 (2024-03-04)


### ⚙️ Continuous Integrations

* **.github:** deprecate reuse of sca scan action in docker image scan ([#95](https://github.com/Kong/public-shared-actions/issues/95)) ([60c9b13](https://github.com/Kong/public-shared-actions/commit/60c9b136104671b7091b2306c599d80fec34ae3f))



## 2.0.1 (2024-02-07)


### ⚙️ Continuous Integrations

* **.github:** fix sca action path and ref for image scan ([#93](https://github.com/Kong/public-shared-actions/issues/93)) ([17456e7](https://github.com/Kong/public-shared-actions/commit/17456e74cf062b1d29d751331d8e2f5ac5baedd4))



# 2.0.0 (2024-02-01)


### ⚙️ Continuous Integrations

* **.github:** generalize sca scan for non docker artifacts ([#89](https://github.com/Kong/public-shared-actions/issues/89)) ([7f27a2b](https://github.com/Kong/public-shared-actions/commit/7f27a2becf7cfbda29125107f07b1482fabe3b77))



# 1.15.0 (2024-01-22)



# 1.13.0 (2023-09-18)



# 1.11.0 (2023-07-06)


### ✨ Features

* ingore unfixed for trivy image scan ([#51](https://github.com/Kong/public-shared-actions/issues/51)) ([1c1db81](https://github.com/Kong/public-shared-actions/commit/1c1db81d4bc99d8c87058fba34203419a0fd0604))


### 🐛 Bug Fixes

* **ci:** Fix grype output file and dependency ([#38](https://github.com/Kong/public-shared-actions/issues/38)) ([45d3c9a](https://github.com/Kong/public-shared-actions/commit/45d3c9a9e2e8ea822429c745f9cd755e38879752))



# 1.3.0 (2023-06-08)


### ✨ Features

* **cd:** add trivy docker-cis scan ([#1](https://github.com/Kong/public-shared-actions/issues/1)) ([84f743c](https://github.com/Kong/public-shared-actions/commit/84f743cf7cfdf5e75dc81e5c158c7e3d6181ced4))
* **cd:** Use pinned tags instead of latest  ([4b6870c](https://github.com/Kong/public-shared-actions/commit/4b6870cbdd4a0c8b78d77e9a210de7fa9eecc18d))


### 🐛 Bug Fixes

* **cd:** only pass input flag to trivy action when docker tar is present ([cbe4f65](https://github.com/Kong/public-shared-actions/commit/cbe4f65b04769cf67756f52984fc8508207d5f64))


### ♻️ Chores

* **docs:** update readme to include trivy docker-cis ([ab12bb2](https://github.com/Kong/public-shared-actions/commit/ab12bb2e88ed367ab47d1110f698cbfa3c68c0c5))
* **sbom-action:** bump sbom action to 0.13.4 ([396a2e4](https://github.com/Kong/public-shared-actions/commit/396a2e4e87b05d84df19455395a64b5aa2a967a5))
