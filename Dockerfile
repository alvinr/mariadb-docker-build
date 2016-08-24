FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y build-dep mysql-server
RUN apt-get -y install devscripts libjemalloc-dev libssl-dev libboost-dev libjudy-dev libkrb5-dev libpam0g-dev libreadline-gplv2-dev libcrack2-dev dpatch

VOLUME ["/src"]

WORKDIR /src

CMD ["/bin/bash"]
