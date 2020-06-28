FROM alpine:3.12
MAINTAINER Stefano Marinelli <stefano@dragas.it>

RUN apk --no-cache add python3 py3-pip python3-dev alpine-sdk libxml2 py3-lxml zlib-dev libjpeg jpeg-dev zeromq-dev && pip3 install -U pip setuptools wheel

RUN  pip3 install "git+https://github.com/getnikola/nikola#egg=Nikola[extras]" && rm -Rf /root/.cache/

WORKDIR /nikola
