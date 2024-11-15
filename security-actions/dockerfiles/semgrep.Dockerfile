# Stage 1: Use the specified base image for Semgrep
ARG SEMGREP_BASE_IMAGE=docker.io/returntocorp/semgrep
ARG SEMGREP_BASE_TAG=latest

FROM ${SEMGREP_BASE_IMAGE}:${SEMGREP_BASE_TAG} AS semgrep-base

# Set up a non-root user for better security
ARG SEMGREP_USER=semgrep
RUN addgroup -g 1001 $SEMGREP_USER && \
    adduser -D -u 1001 -G $SEMGREP_USER $SEMGREP_USER

# Switch to the non-root user
USER $SEMGREP_USER
WORKDIR /home/$SEMGREP_USER

# Set the entrypoint to the semgrep command
ENTRYPOINT ["semgrep"]