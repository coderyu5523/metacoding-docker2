#!/bin/bash

rm -rf /usr/share/nginx/html/*
rm -rf /tmp/frontend-server

git clone --depth=1 https://github.com/metacoding-10-linux-docker/frontend-server /tmp/frontend-server

cp -r /tmp/frontend-server/* /usr/share/nginx/html/
cp /tmp/frontend-server/conf/nginx-ex09.conf /etc/nginx/nginx.conf

sed -i 's/backend1:8080/backend:8080/g' /etc/nginx/nginx.conf
sed -i 's/backend2:8080/backend:8080/g' /etc/nginx/nginx.conf

exec nginx -g "daemon off;"
