# Use the specified base image for Semgrep
ARG BASE_TOOL_IMAGE
ARG BASE_IMAGE


FROM $BASE_TOOL_IMAGE AS semgrep-setup


FROM $BASE_IMAGE AS semgrep

# Switch to the non-root user
USER 1001

# Pull Semgrep binary or package if needed (optional improvement)
COPY --from=semgrep-setup --chown=1001:0 /usr/bin/semgrep /usr/bin/semgrep

# Run Semgrep (you can add your Semgrep command here, e.g., to analyze a directory)
ENTRYPOINT ["semgrep"]
