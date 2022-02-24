#! /bin/bash

# For Valheim server: stop container
find -name 'docker-compose.valheim.yml' -not -path './#recycle/*' -exec docker compose -f {} stop \;