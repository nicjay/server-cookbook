#! /bin/bash

# For Valheim server: pull latest and (re)create
find -name 'docker-compose.valheim.yml' -not -path './#recycle/*' -exec docker compose -f {} pull \; -exec docker compose -f {} up -d --remove-orphans \;