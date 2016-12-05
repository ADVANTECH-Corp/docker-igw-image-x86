FROM ubuntu:16.04

#wsn-simulator

#MAINTAINER Advantech

# update and install dev-tools 
RUN apt-get update
RUN apt-get update
RUN apt-get install -y git-core
RUN apt-get install -y vim
RUN apt-get install -y sudo

# networking
#RUN apt-get install -y ping net-tools

# adv account
RUN useradd -m -k /home/adv adv -p adv -s /bin/bash -G sudo

# set up adv as sudo
RUN echo "adv ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
WORKDIR /home/adv
USER adv

# install wisesnail lib and sample code
RUN git clone --branch wisesnail-lib https://github.com/ADVANTECH-Corp/docker-igw-app-x86.git .
RUN ./install_wisesnaillib.sh
RUN rm -rf sample inc lib *.* ./.git

# install wsn simulator
RUN git clone --branch wsn-simulator https://github.com/ADVANTECH-Corp/docker-igw-app-x86.git ./wsn-simulator
RUN cp -r ./wsn-simulator/*.* ./wsn-simulator/wsn ./wsn-simulator/wisesim .
RUN rm -rf ./wsn-simulator

# Run WSN Simulator  Service
ENTRYPOINT ["./wisesim"]
