FROM ubuntu

MAINTAINER Kaoru Maeda <kaoru.maeda@gmail.com> mad-p

RUN apt-get install -y --force-yes python-software-properties
RUN add-apt-repository ppa:git-core/ppa
RUN add-apt-repository ppa:blueyed/ppa
RUN apt-get update -y
RUN apt-get install -y zsh git

# sshd
RUN apt-get install -y openssh-server openssh-client

# ruby
RUN apt-get install -y gcc make zlibc libreadline-dev libcurl4-openssl-dev
ADD install-rbenv.sh install-rbenv.sh
RUN chmod +x install-rbenv.sh; ./install-rbenv.sh;

EXPOSE 2222
