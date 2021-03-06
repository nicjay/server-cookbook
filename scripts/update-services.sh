#! /bin/bash

# For each service: pull latest and (re)create
find -name 'docker-compose.yml' -not -path './#recycle/*' -exec docker compose -f {} pull \; -exec docker compose -f {} up -d --remove-orphans \;

# Remove dangling images
yes | docker image prune
