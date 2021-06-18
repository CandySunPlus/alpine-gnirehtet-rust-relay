FROM alpine:latest
RUN apk add alpine-sdk sudo \
  && adduser -G abuild -s /bin/ash -D builder \
  && echo "builder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
  && mkdir -p /var/cache/distfiles \
  && chown builder:abuild /var/cache/distfiles
USER builder

WORKDIR /github/workspace

RUN pwd \
      && ls -alh \
      && abuild-keygen -a -i -n \
      && cp /home/builder/.abuild /github/home/
ENTRYPOINT ["/usr/bin/abuild", "-r"]
