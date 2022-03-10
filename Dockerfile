FROM alpine:latest

ADD ./enable_communauty /tmp

RUN chmod +x /tmp/enable_communauty \
 && /tmp/enable_communauty \
 && rm /tmp/enable_communauty

RUN apk update \
 && apk upgrade \
 && apk add bash tini tor\
 && rm /var/cache/apk/*

EXPOSE 9050
EXPOSE 9051

ADD ./torrc /etc/tor/torrc

ENTRYPOINT ["/sbin/tini", "--"]

USER tor
CMD /usr/bin/tor -f /etc/tor/torrc
