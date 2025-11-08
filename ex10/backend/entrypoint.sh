#!/bin/sh
set -e

cd /var/current/app
rm -rf backend-server

git clone https://github.com/metacoding-10-linux-docker/backend-server
cd backend-server

chmod +x gradlew
./gradlew bootJar --no-daemon

exec java -Dspring.profiles.active=prod -jar build/libs/*.jar