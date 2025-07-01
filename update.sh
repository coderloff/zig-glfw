#!/usr/bin/env bash
set -euo pipefail

# Add upstream remote if it doesn't exist
if ! git remote | grep -q "^upstream$"; then
    git remote add upstream https://github.com/glfw/glfw
fi

git fetch upstream
git merge upstream/master --strategy ours
