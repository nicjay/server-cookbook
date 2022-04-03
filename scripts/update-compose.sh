#! /bin/bash

# Install latest Docker Compose release
# Source: https://docs.docker.com/compose/cli-command/#install-on-linux

DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
docker compose version
