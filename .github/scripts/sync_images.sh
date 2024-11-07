#!/bin/bash

set -euo pipefail

ECR_URI="992382581569.dkr.ecr.us-east-1.amazonaws.com"

CONFIG_FILE=".github/imageList.yml"
REGSYNC_CONFIG_FILE="regsync_config.yml"

# Create the regsync configuration file header without credentials
cat <<EOF > "$REGSYNC_CONFIG_FILE"
version: 1
defaults:
  ratelimit:
    min: 100
    retry: 15m
  interval: 60m
sync:
EOF

# Read images from imageList.yml and append to regsync_config.yml
IMAGES=$(yq -r '.images[] | "\(.name)|\(.type)|\(.source)|\(.owner)|\(.repo)|\(.semantic)"' "$CONFIG_FILE")

echo "$IMAGES" | while IFS="|" read -r name type source owner repo semantic; do
  # Build the source and target image names
  source_image="$source/$owner/$repo"
  target_image="$ECR_URI/$name"

  # Determine tag patterns
  if [ "$semantic" = "true" ]; then
    tag_pattern="^[0-9]+(\\.[0-9]+)*$"
  else
    tag_pattern=".*"
  fi

  # Append to the regsync configuration file
  cat <<EOF >> "$REGSYNC_CONFIG_FILE"
  - source: "$source_image"
    target: "$target_image"
    type: $type
    tags:
      allow:
        - "$tag_pattern"
EOF

done

# Run regsync with the generated configuration file
regsync sync --config "$REGSYNC_CONFIG_FILE"