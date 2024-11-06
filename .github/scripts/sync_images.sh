#!/bin/bash

set -euo pipefail

# Get the AWS account ID from the argument
AWS_ACCOUNT_ID="$1"

ECR_URI="${AWS_ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com"

# Retrieve the account ID and region from the provided ECR URI
ACCOUNT_ID=$(echo "$AWS_ACCOUNT_ID" | cut -d '.' -f 1)
REGION="us-east-1"

# Construct the full repository URI for private ECR
FULL_ECR_URI="$ECR_URI"

echo "Syncing images with ECR URI: $FULL_ECR_URI"

# Function to check if repository exists
function check_repository_exists {
  echo "Checking if repository $REPOSITORY exists in private ECR..."
  if ! aws ecr describe-repositories --repository-name "$REPOSITORY" --region "$REGION" > /dev/null 2>&1; then
    echo "Repository $REPOSITORY does not exist. Exiting."
    exit 1
  fi
}

# Function to get the latest tag from upstream
function get_latest_upstream_tag {
  echo "Fetching available tags from the upstream registry for $repo..." >&2

  # Fetch all tags and select the latest (semantic or numeric)
  latest_tag=$(regctl tag ls "$source/$owner/$repo" | grep -E "^[0-9]+(\.[0-9]+)*$" | sort --version-sort | tail -n 1)

  if [ -z "$latest_tag" ]; then
    echo "No valid tags found for $repo." >&2
    return 1
  fi

  echo "$latest_tag"
  return 0
}

# Function to pull an image or OCI artifact using regctl
function pull_artifact {
  echo "Pulling $type from $source with regctl..."
  regctl image copy "$source/$owner/$repo:$tag" "$FULL_ECR_URI/$REPOSITORY:$tag"
}

# Main script
CONFIG_FILE=".github/imageList.yml"
IMAGES=$(yq -r '.images[] | "\(.name)|\(.type)|\(.source)|\(.owner)|\(.repo)|\(.semantic)"' "$CONFIG_FILE")

echo "$IMAGES" | while IFS="|" read -r name type source owner repo semantic; do
  REPOSITORY="$name"
  echo "Repo name is = $REPOSITORY"

  # Get the list of tags
  tags_list=$(regctl tag ls "$FULL_ECR_URI/$REPOSITORY" || true)
  echo "Tag list is = $tags_list"

  # Determine if no tags are available
  if [ -z "$tags_list" ]; then
    echo "No tags are available for $repo. Pulling the latest version from upstream..."
    tag=$(get_latest_upstream_tag)
    pull_artifact
    continue
  fi

  # Determine the current tag (highest semantic or numeric)
  current_tag=$(echo "$tags_list" | grep -E "^[0-9]+(\.[0-9]+)*$" | sort --version-sort | tail -n 1)
  echo "Current tag is = $current_tag"

  # Check if the returned tag is purely numeric or semantic
  if [[ "$current_tag" =~ ^[0-9]+$ ]]; then
    echo "Current tag is numeric: $current_tag"
  else
    echo "Current tag is semantic: $current_tag"
  fi

  # Check if the repository exists in private ECR
  echo "Check if the repository exists in private ECR"
  check_repository_exists

  # Get the latest upstream tag
  echo "Get the latest upstream tag, function run get_latest_upstream_tag"
  tag=$(get_latest_upstream_tag)

  if [ "$tag" != "$current_tag" ]; then
    echo "New version found: $tag for $name"
    echo "Pull new version from upstream"
    pull_artifact
  else
    echo "No new version found for $name."
  fi

done
