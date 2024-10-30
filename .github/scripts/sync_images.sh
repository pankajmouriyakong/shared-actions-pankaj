#!/bin/bash

set -euo pipefail

ECR_URI="$1"

# Retrieve the registry alias
REGISTRY_ALIAS=$(aws ecr-public describe-registries --query 'registries[0].aliases[0].name' --output text)

if [ -z "$REGISTRY_ALIAS" ]; then
  echo "Failed to retrieve registry alias."
  exit 1
fi

# Construct the full repository URI
FULL_ECR_URI="public.ecr.aws/$REGISTRY_ALIAS"

# Functions
function check_or_create_repository {
  echo "Checking if repository $REPOSITORY exists in ECR Public..."
  aws ecr-public describe-repositories --repository-name "$REPOSITORY" > /dev/null 2>&1 || \
  aws ecr-public create-repository --repository-name "$REPOSITORY"
}

function get_latest_ecr_public_tag {
  local latest_ecr_tag
  latest_ecr_tag=$(regctl tag ls "$FULL_ECR_URI/$REPOSITORY" \
    | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$' \
    | sort -Vr \
    | head -n 1)
  echo "$latest_ecr_tag"
}

function get_latest_upstream_tag {
  local latest_upstream_tag
  case "$source" in
    dockerhub)
      latest_upstream_tag=$(regctl tag ls "docker.io/$owner/$repo" \
        | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$' \
        | sort -Vr \
        | head -n 1)
      ;;
    public.ecr.aws)
      latest_upstream_tag=$(regctl tag ls "public.ecr.aws/$owner/$repo" \
        | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$' \
        | sort -Vr \
        | head -n 1)
      ;;
    ghcr)
      latest_upstream_tag=$(regctl tag ls "ghcr.io/$owner/$repo" \
        | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$' \
        | sort -Vr \
        | head -n 1)
      ;;
    *)
      echo "Unknown source $source for getting latest upstream tag."
      ;;
  esac

  echo "$latest_upstream_tag"
}

function copy_image {
  echo "Copying image from $source_repo:$tag to $dest_repo:$tag"
  regctl image copy "$source_repo:$tag" "$dest_repo:$tag"
}

function compare_and_update_image {
  local latest_ecr_tag latest_upstream_tag

  latest_ecr_tag=$(get_latest_ecr_public_tag)
  latest_upstream_tag=$(get_latest_upstream_tag)

  echo "Latest ECR Public tag for $REPOSITORY: $latest_ecr_tag"
  echo "Latest upstream tag for $REPOSITORY: $latest_upstream_tag"

  if [ -z "$latest_upstream_tag" ]; then
    echo "Could not retrieve latest upstream tag for $REPOSITORY."
    return
  fi

  if [ -z "$latest_ecr_tag" ] || [ "$latest_ecr_tag" != "$latest_upstream_tag" ]; then
    echo "Updating to the latest upstream tag ($latest_upstream_tag)..."
    tag="$latest_upstream_tag"

    # Set source_repo and dest_repo
    case "$source" in
      dockerhub)
        source_repo="docker.io/$owner/$repo"
        ;;
      public.ecr.aws)
        source_repo="public.ecr.aws/$owner/$repo"
        ;;
      ghcr)
        source_repo="ghcr.io/$owner/$repo"
        ;;
      *)
        echo "Unknown source $source"
        return
        ;;
    esac

    dest_repo="$FULL_ECR_URI/$REPOSITORY"

    copy_image
  else
    echo "ECR Public repository $REPOSITORY is up to date with tag $latest_ecr_tag."
  fi
}

# Main script
CONFIG_FILE=".github/imageList.yml"
IMAGES=$(yq -r '.images[] | "\(.name)|\(.type)|\(.source)|\(.owner)|\(.repo)|\(.tag)"' "$CONFIG_FILE")

echo "$IMAGES" | while IFS="|" read -r name type source owner repo tag; do
  echo "Processing $name from $source with type $type"
  REPOSITORY="$name"

  # Ensure the repository exists
  check_or_create_repository

  # Compare versions and update if necessary
  compare_and_update_image

done
