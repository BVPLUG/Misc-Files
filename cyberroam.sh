#!/bin/bash
while true
do
    sleep $[7*60];
    wget --user-agent=Mozilla/5.0 --post-data='mode=191&username=UUUUUU&password=PPPPPP' http://172.10.1.2:8090/httpclient.html -O /dev/null
done