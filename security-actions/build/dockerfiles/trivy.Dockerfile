# ARGs for external input (These should be set during build)
ARG BASE_TOOL_IMAGE
ARG BASE_IMAGE
ARG DB_IMAGE

# Stage 1: Pull Trivy DB using ORAS and build a custom image
FROM ghcr.io/oras-project/oras:v1.2.0 AS trivy-db

# Set build arguments for Trivy DB image
ARG DB_IMAGE

# Pull the Trivy DB tarball from the specified image
RUN oras pull ${DB_IMAGE}

# Stage 2: Use aquasec/trivy as the base to prepare Trivy with the custom DB
FROM $BASE_TOOL_IMAGE AS trivy-setup

# Copy the DB tarball from the previous trivy-db stage
COPY --from=trivy-db /workspace/db.tar.gz db.tar.gz

# Create necessary DB cache directories 
# Extract the Trivy DB to the cache path and clean up
RUN mkdir -p /.cache/trivy/db && \
    tar -xzvf db.tar.gz -C /.cache/trivy/db && \
    rm db.tar.gz

# Stage 3: Final minimal image (distroless) with Trivy
FROM $BASE_IMAGE AS trivy-final

# Set environment variable for Trivy DB cache path
ENV TRIVY_CACHE_DIR="/.cache/trivy/db"

# Copy the Trivy binary and DB cache from the previous stage
COPY --from=trivy-setup --chown=1001:0 /usr/local/bin/trivy /usr/local/bin/trivy
COPY --from=trivy-setup --chown=1001:0 /.cache/trivy/db $TRIVY_CACHE_DIR

# Run Trivy as Non-root user
USER 1001

LABEL orgs.opencontainers.image.trivy.image="$BASE_TOOL_IMAGE" \
    orgs.opencontainers.image.trivy.db_image="$DB_IMAGE" \
    orgs.opencontainers.image.base_image="$BASE_IMAGE" \
    orgs.opencontainers.image.url="https://github.com/Kong/public-shared-actions" \
    orgs.opencontainers.image.documentation="https://github.com/Kong/public-shared-actions"

# Set the entrypoint to Trivy without shell access
ENTRYPOINT ["/usr/local/bin/trivy"]
