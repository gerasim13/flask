FROM frolvlad/alpine-python3
MAINTAINER Pavel Litvinenko <gerasim13@gmail.com>

RUN apk update
RUN apk add git

COPY requirements.txt /tmp/
RUN pip3 install --upgrade pip
RUN pip3 install -r /tmp/requirements.txt

EXPOSE 8000
VOLUME ["/src"]
WORKDIR /src
