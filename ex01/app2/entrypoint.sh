#!/bin/bash

# apt-get update 
# apt-get install -y git 1>/dev/null  

rm -rf /usr/share/nginx/html/*

git clone https://github.com/metacoding-10-linux-docker/app-server2 /tmp/app-server2

cp -r /tmp/app-server2/* /usr/share/nginx/html/

exec nginx -g "daemon off;"