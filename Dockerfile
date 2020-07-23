FROM alpine:3.12

RUN apk add --update ca-certificates mosquitto &&\
    adduser -h /home/service -D -s /bin/false service &&\
    rm -rf /var/cache/apk/*

USER service

CMD ["mosquitto", "-c", "/config/mosquitto.conf"]
