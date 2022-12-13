FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV container docker

RUN apt-get -yq update

RUN apt-get -yq install \
    python \
    python-pip \
    virtualenv \
    gunicorn \
    python-flask-sockets \
    curl \
    nginx-full \
    git

COPY scripts/default.site /etc/nginx/sites-available/default

RUN git clone https://github.com/thinguy/mtr-web /mtr-web

WORKDIR /mtr-web

EXPOSE 8000

CMD gunicorn -k flask_sockets.worker mtr-web:app -b :8000


