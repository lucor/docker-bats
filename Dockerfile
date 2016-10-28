FROM alpine:3.4

MAINTAINER Luca Corbo <lu.corbo@gmail.com>

WORKDIR /app

ENV BATS_VERSION "0.4.0"

RUN apk --no-cache add \
        bash \
        curl \
        zip \
        unzip

RUN mkdir -p /tmp/bats && cd /tmp/bats \
    && curl -sSL https://github.com/sstephenson/bats/archive/v$BATS_VERSION.tar.gz -o bats.tgz \
    && tar -zxf bats.tgz \
    && cd bats-$BATS_VERSION \
    && /bin/bash ./install.sh /usr/local \
    && cd / \
    && rm -rf /tmp/bats

CMD ["/usr/local/bin/bats"]
