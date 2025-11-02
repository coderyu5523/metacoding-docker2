#!/bin/bash

rm -rf /etc/nginx/conf.d/*

git clone https://github.com/metacoding-10-linux-docker/nginx-static-server /tmp/nginx-static-server

cp /tmp/nginx-static-server/nginx.conf /etc/nginx/nginx.conf

exec nginx -g "daemon off;"

