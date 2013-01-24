#!/bin/bash
type wget >/dev/null 2>&1 || { echo >&2 "This script needs wget, but it was not found. The script will now exit."; exit 1; }
while true
do
    wget --user-agent=Mozilla/5.0 --post-data='mode=191&username=UUUUUU&password=PPPPPP' http://172.10.1.2:8090/httpclient.html -O /dev/null
    sleep $[7*60];
done
