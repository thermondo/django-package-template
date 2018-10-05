#!/usr/bin/env bash

set -e

REPO_NAME='{{ cookiecutter.project_slug }}'
REPO_DESCRIPTION="{{ cookiecutter.package_description }}"
REPO_VISIBILITY="{{ cookiecutter.visibility }}"
CI=${CI:-false}

if [[ "$CI" == "true" ]]; then
    echo "Skip hook on CI"
    exit 0
fi

hub init
if [[ "$REPO_VISIBILITY" == "public" ]]; then
    hub create -d "$REPO_DESCRIPTION" "Thermondo/$REPO_NAME"
    echo "Setting up PyPi package release:"
    echo "  The username is: thermondo"
    echo "  The password can be found in our 1Password team vault."
    travis setup pypi --com
else
    hub create -p -d "$REPO_DESCRIPTION" "Thermondo/$REPO_NAME"
fi

hub add --all
hub commit -m 'Initial package boilerplate'
hub push --set-upstream origin master
open "https://github.com/Thermondo/$REPO_NAME"
