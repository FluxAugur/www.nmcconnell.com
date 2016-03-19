#!/usr/bin/env bash
[ -f .secret/.github_credentials ] && .secret/.github_credentials

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Clear project directory
rm -rf public

# Build the project
hugo # if using a theme, use `hugo -t <themename>`

# Add changes to git
cd public
git add .

# Commit changes to git
msg="Rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -a -S -m "$msg"

# Push source and build repos
git push origin master

cd ..

git add .

# Commit changes to git
msg="Rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -a -S -m "$msg"

# Push source and build repos
git push origin master
