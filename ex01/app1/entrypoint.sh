#!/bin/bash

# apt-get update 
# apt-get install -y git 1>/dev/null  

rm -rf /usr/share/nginx/html/*

git clone https://github.com/metacoding-10-linux-docker/app-server1 /tmp/app-server1

cp -r /tmp/app-server1/* /usr/share/nginx/html/

exec nginx -g "daemon off;"