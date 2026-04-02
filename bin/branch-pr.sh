#!/bin/bash
#
# a script helper to determine which pull request brought a given sha into the branch head
# i tried doing this as a gitconfig alias alone, but the shell escaping was too ridiculous,
# so it became this script that i just alias to `git pr-merge`.

set -e

REPO_NWO=$(git remote show -n origin | grep Push | cut -d: -f2- | sed 's/ *git@github.com://g' | sed 's/\.git$//g')

gh api "/repos/$REPO_NWO/commits/$1/pulls" --jq '.[0].html_url'
