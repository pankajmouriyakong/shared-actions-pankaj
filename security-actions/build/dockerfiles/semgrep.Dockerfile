# Use the specified base image for Semgrep
ARG BASE_TOOL_IMAGE
ARG BASE_IMAGE
FROM $BASE_IMAGE AS base
USER semgrep
LABEL orgs.opencontainers.image.semgrep.image="$BASE_TOOL_IMAGE" \
    orgs.opencontainers.image.base_image="$BASE_IMAGE" \
    orgs.opencontainers.image.url="https://github.com/Kong/public-shared-actions" \
    orgs.opencontainers.image.documentation="https://github.com/Kong/public-shared-actions"
# Run Semgrep (you can add your Semgrep command here, e.g., to analyze a directory)
ENTRYPOINT ["semgrep"]