#!/bin/bash

rm -rf /usr/share/nginx/html/*
rm -rf /tmp/frontend-server

git clone --depth=1 https://github.com/metacoding-10-linux-docker/frontend-server /tmp/frontend-server

cp -r /tmp/frontend-server/* /usr/share/nginx/html/
cp /tmp/frontend-server/conf/nginx-ex08.conf /etc/nginx/nginx.conf

exec nginx -g "daemon off;"
