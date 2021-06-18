FROM alpine:latest
RUN apk add alpine-sdk sudo
RUN adduser -G abuild -s /bin/ash -D builder
RUN echo "builder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN mkdir -p /var/cache/distfiles
RUN chown builder:abuild /var/cache/distfiles
USER builder
RUN whoami \
    && abuild-keygen -a -i -n
ENTRYPOINT ["/usr/bin/abuild", "-r"]
