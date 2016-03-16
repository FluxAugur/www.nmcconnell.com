#!/usr/bin/env bash
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project
hugo # if using a theme, use `hugo -t <themename>`

# Add changes in public folder to git
git add -A public

# Commit changes to git
msg="Rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -a -S -m "$msg"

# Push source and build repos
git push develop, master
