#! /bin/bash

# Install latest Docker Compose release
# Source: https://docs.docker.com/compose/cli-command/#install-on-linux

CURRENT_VER=$(docker compose version)
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
echo "Old: $CURRENT_VER"
echo "New: `docker compose version < $0`"
