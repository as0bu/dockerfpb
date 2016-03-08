FROM ubuntu
MAINTAINER Taylor Owen (as0bu)

RUN apt-get update \
    && apt-get -y install python-pip git wget createrepo rpm dpkg-dev \
    && pip install fuel-plugin-builder \
    && apt-get clean \
    && rm -rf /var/lib/apt
