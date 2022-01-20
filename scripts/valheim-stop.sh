#! /bin/bash

# For Valheim server: stop container
find -name 'docker-compose.valheim.yml' -exec docker compose -f {} stop \;