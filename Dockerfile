FROM alpine:3.5

MAINTAINER Luca Corbo <lu.corbo@gmail.com>

WORKDIR /app

ENV BATS_VERSION "0.4.0"

RUN apk --no-cache add \
        bash \
        curl \
        zip \
        unzip \
        tar \
        gzip

RUN curl -sSL https://github.com/sstephenson/bats/archive/v$BATS_VERSION.tar.gz -o /tmp/bats.tgz \
    && tar -zxf /tmp/bats.tgz -C /tmp \
    && /bin/bash /tmp/bats-$BATS_VERSION/install.sh /usr/local \
    && rm -rf /tmp/*

ENTRYPOINT ["/usr/local/bin/bats"]
CMD ["--help"]
