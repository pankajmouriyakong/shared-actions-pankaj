# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

# 1.1.0 (2024-12-16)


### ✨ Features

* **cd:** add trivy docker-cis scan ([#1](https://github.com/Kong/public-shared-actions/issues/1)) ([84f743c](https://github.com/Kong/public-shared-actions/commit/84f743cf7cfdf5e75dc81e5c158c7e3d6181ced4))
* **cd:** Use pinned tags instead of latest  ([4b6870c](https://github.com/Kong/public-shared-actions/commit/4b6870cbdd4a0c8b78d77e9a210de7fa9eecc18d))
* **ci:** revert changes ([3156943](https://github.com/Kong/public-shared-actions/commit/31569436d7d8c5f1edee7f80a0e3e3fc113ba774))
* **ci:** revert changes ([4ea6af4](https://github.com/Kong/public-shared-actions/commit/4ea6af4a43d3fc3695f27945376fb6a7aff47b30))
* **ci:** revert changes ([83105d6](https://github.com/Kong/public-shared-actions/commit/83105d674d1d85733477145289a0f195bc92940d))
* ingore unfixed for trivy image scan ([#51](https://github.com/Kong/public-shared-actions/issues/51)) ([1c1db81](https://github.com/Kong/public-shared-actions/commit/1c1db81d4bc99d8c87058fba34203419a0fd0604))
* input to skip Trivy scan  ([#156](https://github.com/Kong/public-shared-actions/issues/156)) ([ecbcd70](https://github.com/Kong/public-shared-actions/commit/ecbcd7051e12e6e3dc37dc890820bbce457bc05f))
* **SEC-1293:** Independent releases ([#58](https://github.com/Kong/public-shared-actions/issues/58)) ([fb87fb8](https://github.com/Kong/public-shared-actions/commit/fb87fb8b11c77c8e35494829210ae2adf2a04461))
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
* **release:** publish [skip ci] ([668e4d4](https://github.com/Kong/public-shared-actions/commit/668e4d4110f5ff4c45b05795f6d7a4af0433a66b))
* **release:** publish [skip ci] ([d45e949](https://github.com/Kong/public-shared-actions/commit/d45e949cac4fd5a308d48e1cdd8f5c32211960a1))
* **sbom-action:** bump sbom action to 0.13.4 ([396a2e4](https://github.com/Kong/public-shared-actions/commit/396a2e4e87b05d84df19455395a64b5aa2a967a5))