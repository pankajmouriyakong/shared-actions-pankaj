# Use the specified base image for Semgrep
ARG BASE_TOOL_IMAGE
ARG BASE_IMAGE
FROM $BASE_IMAGE AS base
RUN addgroup -g 1001 kong && \
    adduser -D -u 1001 -G kong kong

# Switch to the non-root user
USER kong

# Pull Semgrep binary or package if needed (optional improvement)
COPY --from=$BASE_TOOL_IMAGE /usr/local/bin/semgrep /usr/local/bin/semgrep

# Run Semgrep (you can add your Semgrep command here, e.g., to analyze a directory)
ENTRYPOINT ["semgrep"]
