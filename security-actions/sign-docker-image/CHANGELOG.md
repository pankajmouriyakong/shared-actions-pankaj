# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

# 4.0.0 (2024-12-17)


### ✨ Features

* **release:** Independent releases for Public Shared Actions ([3f97ca9](https://github.com/Kong/public-shared-actions/commit/3f97ca95a2d8a4842db68578ea2f0846c25342fb))
* **SLSA/SEC-973:** container image signing action ([#65](https://github.com/Kong/public-shared-actions/issues/65)) ([b7def0b](https://github.com/Kong/public-shared-actions/commit/b7def0b377d98a22f0184651d6d9c93617312d82))


### ⚙️ Continuous Integrations

* **deps:** bump cosign to v2.2.3 to avoid sigstore TUF invalid key issue ([#100](https://github.com/Kong/public-shared-actions/issues/100)) ([590c699](https://github.com/Kong/public-shared-actions/commit/590c699fe824010d7d563a33cc60500d847d3f9e))


### ♻️ Chores

* **readme:** Add usage examples to security actions ([#106](https://github.com/Kong/public-shared-actions/issues/106)) ([d9e10a3](https://github.com/Kong/public-shared-actions/commit/d9e10a320e1fe023ac52e380d349b26bba67152b))


### Breaking changes

* **release:** - Each project within Public Shared Action is now treated as an independent package.
- Each package will have its own versioned release.
- Releases tag example "@security-actions/scan-docker-image@1.1.0".
- Markdown (.md) files will be ignored when determining changes for releases.

* feat(semgrep): update semgrep image name

* fix(ci): update filter file change step to exclude .md README .jpeg
