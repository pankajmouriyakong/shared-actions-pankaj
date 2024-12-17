# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

# 4.0.0 (2024-12-17)


### ✨ Features

* **release:** Independent releases for Public Shared Actions ([3f97ca9](https://github.com/Kong/public-shared-actions/commit/3f97ca95a2d8a4842db68578ea2f0846c25342fb))
* slack workflow conclusion notifications ([#160](https://github.com/Kong/public-shared-actions/issues/160)) ([33942dd](https://github.com/Kong/public-shared-actions/commit/33942ddf9f69faad5d85c1fe63888c267bf83b0a))
* **slack:** new workflow inputs ([#163](https://github.com/Kong/public-shared-actions/issues/163)) ([28d20a1](https://github.com/Kong/public-shared-actions/commit/28d20a1f492927f35b00b317acd78f669c45f88b))


### 🐛 Bug Fixes

* **slack:** flip failure message ([#161](https://github.com/Kong/public-shared-actions/issues/161)) ([4cf2875](https://github.com/Kong/public-shared-actions/commit/4cf28753e54f4cf3768870b50e5b7879ed558a10))
* success not status ([#162](https://github.com/Kong/public-shared-actions/issues/162)) ([0aaaa49](https://github.com/Kong/public-shared-actions/commit/0aaaa49782e9028086feb943ec04e03e35e3f813))


### Breaking changes

* **release:** - Each project within Public Shared Action is now treated as an independent package.
- Each package will have its own versioned release.
- Releases tag example "@security-actions/scan-docker-image@1.1.0".
- Markdown (.md) files will be ignored when determining changes for releases.

* feat(semgrep): update semgrep image name

* fix(ci): update filter file change step to exclude .md README .jpeg
