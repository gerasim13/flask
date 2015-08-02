FROM gerasim13/alpine-pypy
MAINTAINER Pavel Litvinenko <gerasim13@gmail.com>

RUN apk add --update git && \
    rm -rf /var/cache/apk/*

COPY requirements.txt /tmp/
RUN pip3 install --upgrade pip
RUN pip3 install -r /tmp/requirements.txt

EXPOSE 8000
VOLUME ["/src"]
WORKDIR /src
