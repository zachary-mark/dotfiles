#!/bin/bash
#
# a script helper to determine which pull request brought a given sha into the branch head
# i tried doing this as a gitconfig alias alone, but the shell escaping was too ridiculous,
# so it became this script that i just alias to `git pr-merge`.

set -e

BASE_URL="https://github.com"
REPO_NWO=$(git remote show -n origin | grep Push | cut -d: -f2- | sed 's/ *git@github.com://g')
PR_NUMBER=$(git show-merge $1 | awk '/Merge pull request/{sub("#", "") ; print $4}')


echo "$BASE_URL/$REPO_NWO/pull/$PR_NUMBER"
