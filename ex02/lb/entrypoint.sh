#!/bin/bash

# apt-get update 
# apt-get install -y git 1>/dev/null     

rm -rf /etc/nginx/conf.d/*

git clone https://github.com/metacoding-10-linux-docker/nginx-loadbalancer /tmp/nginx-loadbalancer

cp /tmp/nginx-loadbalancer/nginx.conf /etc/nginx/conf.d/default.conf

exec nginx -g "daemon off;"

