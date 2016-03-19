#!/usr/bin/env bash
[ -f .secret/.github_credentials ] && .secret/.github_credentials

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Clear project directory
git rm -rf public

# Build the project
hugo # if using a theme, use `hugo -t <themename>`

# Add static files
# cp -R static/* public

# Add other files
cp -R .well-known public
cp CNAME public
cp keybase.txt public
