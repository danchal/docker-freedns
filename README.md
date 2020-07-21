# docker-freedns

## Build
    docker rm freedns --force
    docker build --no-cache -t danchal/freedns .

## Test
    docker run -it --name freedns danchal/freedns bash
