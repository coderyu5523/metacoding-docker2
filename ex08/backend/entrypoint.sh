#!/bin/sh

rm -rf /var/current/app/*

git clone https://github.com/metacoding-10-linux-docker/backend-server # git clone 코드

sleep 1s # 혹시 문제 생기면 비동기적으로 처리하려고함

cd backend-server #디렉토리로 이동

chmod +x gradlew  # gradlew 파일에 실행 권한을 부여

./gradlew build  # 프로젝트를 빌드, .jar 파일 생성

java -jar -Dspring.profiles.active=prod build/libs/*.jar  # 빌드된 JAR 파일을 실행   