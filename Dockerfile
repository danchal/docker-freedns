FROM lsiobase/alpine:3.12

RUN apk update; \
    apk upgrade; \
    apk add curl; \
    \
    # clean up
    rm -rf /var/cache/apk/* /tmp/*

# create crontab
RUN echo '*/5  *  *  *  *    /usr/local/bin/freedns' > /etc/crontabs/root

# add entrypoint file
COPY entrypoint.sh /
RUN  chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# link freedns config file to /config volume
RUN ln -s /config /etc/freedns

# download the latest freedns update script
RUN wget https://raw.githubusercontent.com/danchal/freedns/master/freedns -O /usr/local/bin/freedns; \
    chmod +x /usr/local/bin/freedns

# set build date
RUN date >/build-date.txt
