#!/usr/bin/env bash

set -euo pipefail

readonly spdx_ext="sbom.spdx.json"
readonly cyclonedx_ext="sbom.cyclonedx.json"
readonly cve_json_ext="cve-report.json"
readonly cve_sarif_ext="cve-report.sarif"
readonly cis_json_ext="cis-report.json"

global_severity_cutoff='critical'
global_enforce_build_failure='false'

if [[ -n ${DIR} && -n ${FILE} ]]; then
    echo '::error ::Input fields "dir" and "file" are mutually exlcusive'
    exit 1
fi

if [[ -z ${DIR} && -z ${FILE} ]]; then
    echo '::error ::Specify one of "dir" and "file" inputs fields'
    exit 1
fi

if [[ -n ${DIR} ]]; then
    echo "scan_dir=${DIR}" >> "$GITHUB_OUTPUT"
fi

if [[ -n ${FILE} ]]; then
    echo "scan_file=${FILE}" >> "$GITHUB_OUTPUT"
fi

if [[ -n ${ASSET_PREFIX} ]]; then
    echo "sbom_spdx_file=${ASSET_PREFIX##*/}-${spdx_ext}" >> "$GITHUB_OUTPUT"
    echo "sbom_cyclonedx_file=${ASSET_PREFIX##*/}-${cyclonedx_ext}" >> "$GITHUB_OUTPUT"
    echo "grype_json_file=${ASSET_PREFIX##*/}-${cve_json_ext}" >> "$GITHUB_OUTPUT"
    echo "grype_sarif_file=${ASSET_PREFIX##*/}-${cve_sarif_ext}" >> "$GITHUB_OUTPUT"
    echo "cis_json_file=${ASSET_PREFIX##*/}-${cis_json_ext}" >> "$GITHUB_OUTPUT"
else
    echo "sbom_spdx_file=${spdx_ext}" >> "$GITHUB_OUTPUT"
    echo "sbom_cyclonedx_file=${cyclonedx_ext}" >> "$GITHUB_OUTPUT"
    echo "grype_json_file=${cve_json_ext}" >> "$GITHUB_OUTPUT"
    echo "grype_sarif_file=${cve_sarif_ext}" >> "$GITHUB_OUTPUT"
    echo "cis_json_file=${cis_json_ext}" >> "$GITHUB_OUTPUT"
fi

if [[ -n ${global_severity_cutoff} ]]; then
    echo "global_severity_cutoff=${global_severity_cutoff}" >> "$GITHUB_OUTPUT"
else
    echo "::error ::set global_severity_cutoff in $0"
    exit 1
fi

if [[ -n ${global_enforce_build_failure} ]]; then
    echo "global_enforce_build_failure=${global_enforce_build_failure}" >> "$GITHUB_OUTPUT"
else
    echo "::error ::set global_enforce_build_failure in $0"
    exit 1
fi
