FROM alpine:edge


RUN apk update && apk add openvswitch && rm -rf /var/cache/apk/*

VOLUME /etc/openvswitch/


ADD boot.sh /bin/boot.sh

CMD /bin/sh /bin/boot.sh
