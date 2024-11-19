# Use the specified base image for Semgrep
FROM docker.io/semgrep/semgrep:latest@sha256:027ea6e8a009cbf0031df5abe9d1491ca82656fe7c584257c198ab680d770eb7 AS base
USER semgrep
LABEL orgs.opencontainers.image.semgrep.image="docker.io/semgrep/semgrep:latest@sha256:027ea6e8a009cbf0031df5abe9d1491ca82656fe7c584257c198ab680d770eb7" \
    orgs.opencontainers.image.base_image="docker.io/semgrep/semgrep:latest@sha256:027ea6e8a009cbf0031df5abe9d1491ca82656fe7c584257c198ab680d770eb7" \
    orgs.opencontainers.image.url="https://github.com/Kong/public-shared-actions" \
    orgs.opencontainers.image.documentation="https://github.com/Kong/public-shared-actions"
# Run Semgrep (you can add your Semgrep command here, e.g., to analyze a directory)
ENTRYPOINT ["semgrep"]