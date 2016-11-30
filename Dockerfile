FROM ubuntu:16.04

#MAINTAINER Advantech

#update and install npm
RUN apt-get update
RUN apt-get install -y npm

#tools
RUN apt-get install -y vim
RUN apt-get install -y sudo git

# Install nodejs and npm node-red
RUN apt-get install -y nodejs-legacy



# adv account
RUN useradd -m -k /home/adv adv -p adv -s /bin/bash -G sudo

# set up adv as sudo
RUN echo "adv ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
WORKDIR /home/adv
USER adv

# install APIGateway
RUN git clone https://github.com/ADVANTECH-Corp/APIGateway.git /home/adv/APIGateway
RUN sudo cp APIGateway/script/advigw-restapi /usr/local/bin/.


#Setting docker port and run node-red
EXPOSE 3000

# Run api-gw
ENTRYPOINT ["advigw-restapi"]

