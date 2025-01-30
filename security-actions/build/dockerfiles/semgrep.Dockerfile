# Use the specified base image for Semgrep setup
ARG BASE_TOOL_IMAGE
ARG BASE_IMAGE

FROM $BASE_TOOL_IMAGE AS semgrep-setup

FROM $BASE_IMAGE AS semgrep

# Switch to the non-root user
USER 1001

# Copy the Semgrep binary from the setup stage to the correct path
COPY --from=semgrep-setup --chown=1001:0 /usr/bin/semgrep /usr/bin/semgrep

# Ensure the Semgrep binary is executable (usually not needed but good to ensure)
RUN chmod +x /usr/bin/semgrep

# Set the entry point to Semgrep
ENTRYPOINT ["semgrep"]
