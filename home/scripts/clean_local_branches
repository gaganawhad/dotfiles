#!/bin/bash

# This script deletes the local branches that are already merged into the git branch you are currently on, and
# loops through the rest asking you if you want to delete each one.

# Only Run this command in a git repository
if [ ! -d .git ] && ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "This command must be run inside a Git repository."
    exit 1
fi

# Check for current Branch to be master or main.
current_branch=$(git rev-parse --abbrev-ref HEAD)
if [ "$current_branch" != "master" ] && [ "$current_branch" != "main" ]; then
    echo "This command must be run on 'master' or 'main' branch."
    exit 1
fi

git branch --merged $(git rev-parse --abbrev-ref HEAD) | grep -v 'develop$' | grep -v 'master$' | xargs git branch -d
for branch in $(git for-each-ref refs/heads/ --format='%(refname:short)'); do
  [ $branch == "develop" ]  || [ $branch == "master" ] && continue
  read -p "Delete branch $branch (y/n)?"
  if [ $REPLY == "y" ]
  then
    git branch -D $branch
  fi
done
