FROM eclipse-temurin:21-jdk-alpine

RUN apk add --no-cache git

WORKDIR /var/current/app
COPY entrypoint.sh /entrypoint.sh

RUN sed -i 's/\r$//' /entrypoint.sh && chmod +x /entrypoint.sh

ENTRYPOINT ["/bin/sh","/entrypoint.sh"]
