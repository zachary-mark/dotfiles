#!/bin/bash
#

set -e

file_path=""
if [ "$#" -eq 1 ]; then
  file_path="$1"
  shift
fi

if [ "$#" -gt 0 ]; then
  echo "usage: $0 <relative-repo-path>"
  exit 1
fi


BASE_URL="https://github.com"
repo_nwo=$(git config --get remote.origin.url | tr ':' ' ' | awk '{print $NF}')
repo_base_dir="$(git rev-parse --show-toplevel)/"
blob_branch=${BLOB_BRANCH:-$(git status | head -1 | awk '{print $NF}')}
absolute_file_path="$(pwd)/$file_path"

if [ ! -e "$absolute_file_path" ] ; then
  echo "error: $absolute_file_path does not exist"
  exit 1
fi

net_file_path=${absolute_file_path#$repo_base_dir}
browse_type="blob"
if [ -d "$absolute_file_path" ] ; then
  browse_type="tree"
fi

echo "$BASE_URL/$repo_nwo/$browse_type/$blob_branch/$net_file_path"
