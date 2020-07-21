#!/bin/sh
echo "Starting FreeDNS, build date $(cat /build-date.txt)"

# update dns on startup
freedns

# start cron daemon, log level = 2, foreground
crond -l 2 -f
