FROM alpine:3.11

RUN apk add --update ca-certificates mosquitto &&\
    adduser -h /home/service -D -s /bin/false service &&\
    rm -rf /var/cache/apk/*

USER service

CMD ["mosquitto", "-c", "/defaults/mosquitto.conf"]
