FROM python:3-onbuild
MAINTAINER Pavel Litvinenko <gerasim13@gmail.com>
ADD requirements.txt requirements.txt
RUN pip install virtualenv
RUN virtualenv /env
RUN /env/bin/pip install -r requirements.txt
EXPOSE 8000
VOLUME ["/src"]
WORKDIR /src
