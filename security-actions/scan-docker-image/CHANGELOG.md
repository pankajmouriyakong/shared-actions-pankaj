# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

# 1.1.0 (2024-12-09)


### ✨ Features

* **cd:** add trivy docker-cis scan ([#1](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/1)) ([84f743c](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/84f743cf7cfdf5e75dc81e5c158c7e3d6181ced4))
* **cd:** Use pinned tags instead of latest  ([4b6870c](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/4b6870cbdd4a0c8b78d77e9a210de7fa9eecc18d))
* ingore unfixed for trivy image scan ([#51](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/51)) ([1c1db81](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/1c1db81d4bc99d8c87058fba34203419a0fd0604))
* input to skip Trivy scan  ([#156](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/156)) ([ecbcd70](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/ecbcd7051e12e6e3dc37dc890820bbce457bc05f))
* **security-actions/scan-docker-image:** support `trivy_db_cache` as alternate ([#184](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/184)) ([0ccacff](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/0ccacffed804d85da3f938a1b78c12831935f992))
* update Semgrep image version ([8850320](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/88503201aab709214c2b346bde9bc8d2bcea6ba7))
* update tools versions ([f76748f](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/f76748fbf3e6501ee79b10c5de27669ed6e0d612))
* update tools versions ([852fb9a](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/852fb9a9af1c5ce48499713d6bcf051293fd52e2))
* update trivy version ([06b088f](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/06b088f7ba8552f72f6d3ecea80b8b338d65625c))
* update yaml ([15de12e](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/15de12ed155764fa9d32f2b1bf5ec13339ff1fdf))
* update yaml ([1e1466e](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/1e1466ec871b45979a0a610a65d35b742a66cc5e))


### 🐛 Bug Fixes

* **cd:** only pass input flag to trivy action when docker tar is present ([cbe4f65](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/cbe4f65b04769cf67756f52984fc8508207d5f64))
* **ci:** Fix grype output file and dependency ([#38](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/38)) ([45d3c9a](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/45d3c9a9e2e8ea822429c745f9cd755e38879752))
* omitted severity flags in docker image scan action ([#142](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/142)) ([f19e9a7](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/f19e9a7b75f547a5908e658627650a2175340dca))
* update ci.yml and add package.json in scan-docker-image ([8793c79](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/8793c79e6a38559579d0999eadf25cffea500626))
* update package.json ([fdcda8a](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/fdcda8aa1b950c455a5920b0323a5225c1b02ff3))
* update review commits ([cea1d64](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/cea1d6480bfd7daa522b11514c0e1f7e6f56af2f))


### ⚙️ Continuous Integrations

* **.github:** deprecate reuse of sca scan action in docker image scan ([#95](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/95)) ([60c9b13](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/60c9b136104671b7091b2306c599d80fec34ae3f))
* **.github:** fix sca action path and ref for image scan ([#93](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/93)) ([17456e7](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/17456e74cf062b1d29d751331d8e2f5ac5baedd4))
* **.github:** generalize sca scan for non docker artifacts ([#89](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/89)) ([7f27a2b](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/7f27a2becf7cfbda29125107f07b1482fabe3b77))


### ♻️ Chores

* **docs:** update readme to include trivy docker-cis ([ab12bb2](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/ab12bb2e88ed367ab47d1110f698cbfa3c68c0c5))
* **readme:** Add usage examples to security actions ([#106](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/106)) ([d9e10a3](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/d9e10a320e1fe023ac52e380d349b26bba67152b))
* **readme:** Add vulnerability migration and breakglass strategy for SCA and CVE action ([#107](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/107)) ([ad89a25](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/ad89a255ff44a03377215b8bccbfdc17c8c7fb46))
* **release:** publish [skip ci] ([01f8ee7](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/01f8ee7ae70e2bffbcb6e25f69f1d1f0913ec0cd))
* **release:** publish [skip ci] ([4613a07](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/4613a07f9ed0654ed6f88f39ae98ffc5c3a22702))
* **release:** publish [skip ci] ([179c6ba](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/179c6ba661c6c5b9799354a0766884ea7606aeb8))
* **release:** publish [skip ci] ([1a67340](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/1a67340c109aa1170eebf4b1f390bd9a5d17dd42))
* **release:** publish [skip ci] ([c32aac4](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/c32aac46c13d23806d34c2c74af734904341c8c2))
* **release:** publish [skip ci] ([a0edf6c](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/a0edf6c8770e9e0ad1a3c3e06275e7f721027db9))
* **sbom-action:** bump sbom action to 0.13.4 ([396a2e4](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/396a2e4e87b05d84df19455395a64b5aa2a967a5))





# [1.6.0](https://github.com/pankajmouriyakong/shared-actions-pankaj/compare/ScanDockerImage@1.5.0...ScanDockerImage@1.6.0) (2024-12-06)


### ✨ Features

* update yaml ([15de12e](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/15de12ed155764fa9d32f2b1bf5ec13339ff1fdf))





# [1.5.0](https://github.com/pankajmouriyakong/shared-actions-pankaj/compare/ScanDockerImage@1.4.0...ScanDockerImage@1.5.0) (2024-12-06)


### ✨ Features

* update yaml ([1e1466e](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/1e1466ec871b45979a0a610a65d35b742a66cc5e))





# [1.4.0](https://github.com/pankajmouriyakong/shared-actions-pankaj/compare/ScanDockerImage@1.3.0...ScanDockerImage@1.4.0) (2024-12-06)


### ✨ Features

* update tools versions ([f76748f](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/f76748fbf3e6501ee79b10c5de27669ed6e0d612))





# [1.3.0](https://github.com/pankajmouriyakong/shared-actions-pankaj/compare/ScanDockerImage@1.2.0...ScanDockerImage@1.3.0) (2024-12-06)


### ✨ Features

* update tools versions ([852fb9a](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/852fb9a9af1c5ce48499713d6bcf051293fd52e2))





# [1.2.0](https://github.com/pankajmouriyakong/shared-actions-pankaj/compare/ScanDockerImage@1.1.0...ScanDockerImage@1.2.0) (2024-12-06)


### ✨ Features

* update trivy version ([06b088f](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/06b088f7ba8552f72f6d3ecea80b8b338d65625c))





# 1.1.0 (2024-12-06)


### ✨ Features

* **cd:** add trivy docker-cis scan ([#1](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/1)) ([84f743c](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/84f743cf7cfdf5e75dc81e5c158c7e3d6181ced4))
* **cd:** Use pinned tags instead of latest  ([4b6870c](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/4b6870cbdd4a0c8b78d77e9a210de7fa9eecc18d))
* ingore unfixed for trivy image scan ([#51](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/51)) ([1c1db81](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/1c1db81d4bc99d8c87058fba34203419a0fd0604))
* input to skip Trivy scan  ([#156](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/156)) ([ecbcd70](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/ecbcd7051e12e6e3dc37dc890820bbce457bc05f))
* **security-actions/scan-docker-image:** support `trivy_db_cache` as alternate ([#184](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/184)) ([0ccacff](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/0ccacffed804d85da3f938a1b78c12831935f992))
* update Semgrep image version ([8850320](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/88503201aab709214c2b346bde9bc8d2bcea6ba7))


### 🐛 Bug Fixes

* **cd:** only pass input flag to trivy action when docker tar is present ([cbe4f65](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/cbe4f65b04769cf67756f52984fc8508207d5f64))
* **ci:** Fix grype output file and dependency ([#38](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/38)) ([45d3c9a](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/45d3c9a9e2e8ea822429c745f9cd755e38879752))
* omitted severity flags in docker image scan action ([#142](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/142)) ([f19e9a7](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/f19e9a7b75f547a5908e658627650a2175340dca))
* update ci.yml and add package.json in scan-docker-image ([8793c79](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/8793c79e6a38559579d0999eadf25cffea500626))
* update package.json ([fdcda8a](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/fdcda8aa1b950c455a5920b0323a5225c1b02ff3))


### ⚙️ Continuous Integrations

* **.github:** deprecate reuse of sca scan action in docker image scan ([#95](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/95)) ([60c9b13](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/60c9b136104671b7091b2306c599d80fec34ae3f))
* **.github:** fix sca action path and ref for image scan ([#93](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/93)) ([17456e7](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/17456e74cf062b1d29d751331d8e2f5ac5baedd4))
* **.github:** generalize sca scan for non docker artifacts ([#89](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/89)) ([7f27a2b](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/7f27a2becf7cfbda29125107f07b1482fabe3b77))


### ♻️ Chores

* **docs:** update readme to include trivy docker-cis ([ab12bb2](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/ab12bb2e88ed367ab47d1110f698cbfa3c68c0c5))
* **readme:** Add usage examples to security actions ([#106](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/106)) ([d9e10a3](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/d9e10a320e1fe023ac52e380d349b26bba67152b))
* **readme:** Add vulnerability migration and breakglass strategy for SCA and CVE action ([#107](https://github.com/pankajmouriyakong/shared-actions-pankaj/issues/107)) ([ad89a25](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/ad89a255ff44a03377215b8bccbfdc17c8c7fb46))
* **sbom-action:** bump sbom action to 0.13.4 ([396a2e4](https://github.com/pankajmouriyakong/shared-actions-pankaj/commit/396a2e4e87b05d84df19455395a64b5aa2a967a5))
