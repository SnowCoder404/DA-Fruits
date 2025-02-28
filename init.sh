#! /usr/bin/sh
#
#   Copyright © 2025, SnowCoder404
#
ACCESSKEY=$(cat ~/.github-config/access_key)
if [ -d $DIRECTORY ]; then
    git init
    git add .
    git commit -m "Initial commit"
    git branch -M main
    git remote add origin https://$ACCESSKEY@github.com/$*
    git push -u origin main
else
    echo "Access Key not found."
fi