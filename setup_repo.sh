#!/usr/bin/env bash
set -euo pipefail

# Simple helper to initialize a repo and make the first commit
if [ -z "$(ls -A .)" ]; then
  echo "Initializing empty repository in $(pwd)"
else
  echo "Directory not empty — proceeding but will not remove files"
fi

git init
git add .
git commit -m "chore: initial commit"

echo "Repository initialized. Add remote with: git remote add origin <your-remote-url>"
