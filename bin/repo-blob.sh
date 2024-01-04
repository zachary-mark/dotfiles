#!/bin/bash
#

set -e

if [ "$#" -ne 1 ]; then
  echo "usage: $0 <relative-repo-path>"
  exit 1
fi

BASE_URL="https://github.com"
repo_nwo=$(git config --get remote.origin.url | tr ':' ' ' | awk '{print $NF}')
blob_branch=${BLOB_BRANCH:-$(git status | head -1 | awk '{print $NF}')}
file_path="$1"

echo "$BASE_URL/$repo_nwo/blob/$blob_branch/$file_path"
