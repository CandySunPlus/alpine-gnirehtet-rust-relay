FROM alpine:latest
RUN apk add alpine-sdk sudo \
  && adduser -G abuild -s /bin/ash -D builder \
  && echo "builder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
  && mkdir -p /var/cache/distfiles \
  && chown builder:abuild /var/cache/distfiles

COPY entry.sh /sbin/entry.sh

USER builder

ENV HOME /home/builder
ENV PACKAGER_PRIVKEY ${HOME}/.abuild/niksun.rsa
ENV BUILD_SRC ${HOME}/src

RUN mkdir ${HOME}/.abuild ${HOME}/src

ENTRYPOINT ["/sbin/entry.sh"]
