FROM nginx

RUN apt-get update || true && \
    apt-get install -y git || \
    (sleep 2 && apt-get update && apt-get install -y git)

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]