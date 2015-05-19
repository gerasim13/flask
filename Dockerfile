FROM python:3-onbuild
MAINTAINER Pavel Litvinenko <gerasim13@gmail.com>
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt
EXPOSE 8000
VOLUME ["/src"]
WORKDIR /src
