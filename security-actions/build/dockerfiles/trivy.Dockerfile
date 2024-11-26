# ARGs for external input (These should be set during build)
ARG BASE_TOOL_IMAGE
#ARG BASE_IMAGE

# Stage 1: Use aquasec/trivy as the base
FROM $BASE_TOOL_IMAGE AS trivy-setup

## Stage 2: Final minimal image (distroless) with Trivy
#FROM $BASE_IMAGE AS trivy-final

# Copy the Trivy binary from the setup stage
#COPY --from=trivy-setup --chown=1001:0 /usr/local/bin/trivy /usr/local/bin/trivy

# Run Trivy as Non-root user
USER 1001

LABEL orgs.opencontainers.image.trivy.image="docker.io/aquasec/trivy:0.55.2" \
      orgs.opencontainers.image.base_image="gcr.io/distroless/base" \
      orgs.opencontainers.image.url="https://github.com/Kong/public-shared-actions" \
      orgs.opencontainers.image.documentation="https://github.com/Kong/public-shared-actions"

# Set the entrypoint to Trivy without shell access
ENTRYPOINT ["/usr/local/bin/trivy"]
