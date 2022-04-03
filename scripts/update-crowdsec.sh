#! /bin/bash

# Update existing parsers, scenarios and collections to the latest available version.

docker exec -t crowdsec cscli hub update
docker exec -t crowdsec cscli hub upgrade
