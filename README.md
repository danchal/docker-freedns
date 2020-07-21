# Docker-freedns
Alpine Linux Docker that updates FreeDNS domains.

## References
[https://github.com/danchal/freedns](https://github.com/danchal/freedns)

[https://freedns.afraid.org/](https://freedns.afraid.org/)

## Build
    docker build --no-cache -t danchal/freedns

## Run
    $ docker run --name freedns -v /config:/usr/share/freedns:ro -d freedns
