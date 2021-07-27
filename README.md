Includes docker-composes and scripts to configure services on my home server, a Synology DS918+ NAS. 

Containers are a combination of images from [lsio](https://www.linuxserver.io/) or [hotio](https://hotio.dev/) where possible, or official images from app creators.

Attempts to follow the latest [compose spec](https://github.com/compose-spec/compose-spec).

Useful commands:

> docker-compose pull
> 
> docker-compose up -d --remove-orphans
> 
> docker image prune
