# Docker-freedns
Alpine Linux Docker that updates FreeDNS domains.

## References
[https://github.com/danchal/freedns](https://github.com/danchal/freedns)

[https://freedns.afraid.org/](https://freedns.afraid.org/)

## Build
    docker build --pull --no-cache -t danchal/freedns:latest .

## Push
    docker push danchal/freedns:latest

## Run
    $ docker run --name freedns \
        -v /config:/usr/share/freedns:ro \
        -e INTERVAL_MINUTES=5 \
        -d danchal/freedns
