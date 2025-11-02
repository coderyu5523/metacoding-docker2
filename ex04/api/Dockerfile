FROM python:3.10-alpine

RUN apk add --no-cache git

WORKDIR /app
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
RUN pip install flask && pip install redis

EXPOSE 5000
CMD ["./entrypoint.sh"]