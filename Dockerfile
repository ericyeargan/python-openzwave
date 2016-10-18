FROM debian:wheezy
MAINTAINER bibi21000 <bibi21000@gmail.com>
ADD . /home/docker-py2
WORKDIR /home/docker-py2
RUN apt-get update && apt-get install -y make python sudo
RUN make python-deps
RUN make autobuild-deps
RUN env
RUN make update
RUN make build
RUN make install
RUN make autobuild-tests
