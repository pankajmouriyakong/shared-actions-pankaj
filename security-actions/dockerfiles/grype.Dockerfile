# Stage 1: Use the specified base image for GRYPE
ARG GRYPE_BASE_IMAGE=docker.io/anchore/grype
ARG GRYPE_BASE_TAG=latest

FROM ${GRYPE_BASE_IMAGE}:${GRYPE_BASE_TAG} AS grype-base

## Set up a non-root user for better security
ARG GRYPE_USER=grype-custom

#Create a custom user (non-root user)
RUN addgroup -g 1001 $GRYPE_USER && \
    adduser -D -u 1001 -G $GRYPE_USER $GRYPE_USER

# Switch to the non-root user
USER $GRYPE_USER
WORKDIR /home/$GRYPE_USER

# Set the entrypoint to the GRYPE command
ENTRYPOINT ["GRYPE"]

