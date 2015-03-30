FROM ubuntu:trusty

RUN apt-get update
RUN apt-get -y install sudo

RUN useradd docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN mkdir -p /home/docker && chown -R docker:docker /home/docker

# RUN apt-get -y install golang

USER docker
WORKDIR /home/docker

CMD /bin/bash
