#!/bin/bash

set -euo pipefail

ECR_URI="992382581569.dkr.ecr.us-east-1.amazonaws.com"

# Retrieve the account ID and region from the provided ECR URI
ACCOUNT_ID=$(echo "$ECR_URI" | cut -d '.' -f 1)
REGION=$(echo "$ECR_URI" | cut -d '.' -f 4)

# Construct the full repository URI for private ECR
FULL_ECR_URI="$ECR_URI"

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

  # Check if the repository exists in private ECR
  echo "Check if the repository exists in private ECR"
  check_repository_exists

  # Get the latest upstream tag
  echo "Get the latest upstream tag, function run get_latest_upstream_tag"
  tag=$(get_latest_upstream_tag)

  # Pull and push the latest tag to ECR, overwriting if it already exists
  echo "Pulling and pushing the latest tag: $tag for $name"
  pull_artifact

done
