FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk add --update \
  curl \
  nss \
  openjdk7 && \
  rm -rf /var/cache/apk/*

ADD rootfs /

RUN mkdir /app
WORKDIR /app
CMD ["bash"]
