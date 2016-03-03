FROM ubuntu
MAINTAINER Taylor Owen (as0bu)

RUN apt-get update
RUN apt-get -y install python-pip git wget createrepo rpm dpkg-dev
RUN pip install fuel-plugin-builder
