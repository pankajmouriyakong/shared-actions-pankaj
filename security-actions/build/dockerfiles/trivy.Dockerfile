# Stage 1: Pull Trivy DB using ORAS and build a custom image
FROM ghcr.io/oras-project/oras:v1.2.0 AS trivy-db

# Set build arguments for Trivy DB image
ARG DB_IMAGE="public.ecr.aws/aquasecurity/trivy-db"
ARG DB_VERSION="2"

# Pull the Trivy DB tarball from the specified image
RUN oras pull ${DB_IMAGE}:${DB_VERSION}

# Stage 2: Use aquasec/trivy as the base to prepare Trivy with the custom DB
FROM docker.io/aquasec/trivy:0.57.1@sha256:5c59e08f980b5d4d503329773480fcea2c9bdad7e381d846fbf9f2ecb8050f6b AS trivy-setup

# Copy the DB tarball from the previous trivy-db stage
COPY --from=trivy-db /workspace/db.tar.gz db.tar.gz

# Create necessary DB cache directories 
# Extract the Trivy DB to the cache path and clean up
RUN mkdir -p /.cache/trivy/db && \
    tar -xzvf db.tar.gz -C /.cache/trivy/db && \
    rm db.tar.gz

# Stage 3: Final minimal image (distroless) with Trivy
FROM gcr.io/distroless/base@sha256:7a4bffcb07307d97aa731b50cb6ab22a68a8314426f4e4428335939b5b1943a5 AS trivy-final

# Set environment variable for Trivy DB cache path
ENV TRIVY_DB_CACHE_PATH="/.cache/trivy/db"

# Copy the Trivy binary and DB cache from the previous stage
COPY --from=trivy-setup --chown=1001:0 /usr/local/bin/trivy /usr/local/bin/trivy
COPY --from=trivy-setup --chown=1001:0 /.cache/trivy/db $TRIVY_DB_CACHE_PATH

# Run Trivy as Non-root user
USER 1001

# Set the entrypoint to Trivy without shell access
ENTRYPOINT ["/usr/local/bin/trivy"]
