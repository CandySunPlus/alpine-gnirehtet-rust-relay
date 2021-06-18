FROM alpine:latest
RUN apk add alpine-sdk sudo \
  && adduser -G abuild -s /bin/ash -D builder \
  && echo "builder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
  && mkdir -p /var/cache/distfiles \
  && chown builder:abuild /var/cache/distfiles

COPY entry.sh /sbin/entry.sh

WORKDIR /github/workspace

ENTRYPOINT ["/sbin/entry.sh"]
