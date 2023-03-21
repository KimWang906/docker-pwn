FROM ubuntu:20.04
 
ENV DEBIAN_FRONTEND=noninteractive
VOLUME ["/volume/path"]

RUN dpkg --add-architecture i386
RUN apt-get -y update --fix-missing && apt-get -y upgrade
RUN apt-get -y install libc6:i386 libncurses5:i386 libstdc++6:i386
RUN apt-get -y install socat gdb git gcc vim
RUN apt-get -y install gcc-multilib
RUN apt-get install -y locales
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen
RUN export LC_CTYPE=C.UTF-8

WORKDIR /usr/bin/
RUN git clone https://github.com/pwndbg/pwndbg
WORKDIR /usr/bin/pwndbg
RUN ./setup.sh

RUN mkdir /home/system-hacking
WORKDIR /home/system-hacking

RUN apt-get -y install tmux
RUN apt-get -y install python3 libssl-dev libffi-dev build-essential
RUN apt-get -y install python3-pip
RUN python3 -m pip install --upgrade pwntools
RUN apt-get -y install