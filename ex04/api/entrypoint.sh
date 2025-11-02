#!/bin/sh

rm -rf /app/*

git clone https://github.com/metacoding-10-linux-docker/api-server /tmp/api-server

cp /tmp/api-server/app.py /app/

exec python app.py