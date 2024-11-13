# Stage 1: Pull Trivy DB using ORAS and build a custom image

ARG TRIVY_BASE_IMAGE=docker.io/aquasec/trivy
ARG TRIVY_BASE_TAG=latest

FROM ghcr.io/oras-project/oras:v1.2.0 AS trivy-db

# Set build arguments for Trivy DB image
ARG TRIVY_DB_IMAGE="ghcr.io/aquasecurity/trivy-db"
ARG TRIVY_DB_TAG="2"

# Pull the Trivy DB tarball from the specified image
RUN oras pull ${TRIVY_DB_IMAGE}:${TRIVY_DB_TAG}

# Stage 2: Use aquasec/trivy as the base and prepare the final image
FROM ${TRIVY_BASE_IMAGE}:${TRIVY_BASE_TAG} AS trivy-base
ARG TRIVY_USER=trivy
# Set environment variable for Trivy DB path
ARG TRIVY_DB_CACHE_PATH=/home/$TRIVY_USER/.cache/trivy/db
ENV TRIVY_DB_CACHE_PATH=${TRIVY_DB_CACHE_PATH}
#Create a custom user (non-root user)
RUN addgroup -g 1001 $TRIVY_USER && \
    adduser -D -u 1001 -G $TRIVY_USER $TRIVY_USER

RUN chown $TRIVY_USER:$TRIVY_USER /usr/local/bin/trivy
USER $TRIVY_USER
# Create necessary directories as Non root user
RUN mkdir -p $TRIVY_DB_CACHE_PATH
    
# Stage 3: Final image based on the Trivy image but with files from previous stages
FROM trivy-base AS trivy
#Switch to non-root user
USER trivy
WORKDIR /home/trivy
# Copy the DB tarball from the previous trivy-db stage
COPY --from=trivy-db /workspace/db.tar.gz db.tar.gz

# Extract the Trivy DB and clean up the tarball
RUN tar -xzvf db.tar.gz -C $TRIVY_DB_CACHE_PATH && \
    rm db.tar.gz

# Set the entrypoint to the trivy command
ENTRYPOINT ["trivy"]
