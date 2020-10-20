#!/bin/sh
echo "Starting FreeDNS, build date $(cat /build-date.txt)"
echo "INTERVAL_MINUTES<${INTERVAL_MINUTES}>"

# create crontab
echo "*/${INTERVAL_MINUTES}  *  *  *  *    /usr/local/bin/freedns" > /etc/crontabs/root

# update dns on startup
freedns

# start cron daemon, log level = 2, foreground
crond -l 2 -f
