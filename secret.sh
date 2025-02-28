#! /usr/bin/sh
#
#   Copyright © 2025, SnowCoder404
#
DIRECTORY="~/.github-config/.ssh/"
if [ -d $DIRECTORY ]; then
    echo "Add private ssh key as github secret."
    gh secret set SECRET_KEY < $DIRECTORY
else
    echo "SSH Key not found."
fi