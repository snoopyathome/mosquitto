FROM alpine:3.7

RUN apk add --update mosquitto &&\
    rm -rf /var/cache/apk/*

CMD ["mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]
