FROM ubuntu:16.04

#MAINTAINER Advantech

#update and install npm
RUN apt-get update
RUN apt-get install -y npm
#RUN apt-get update 

#tools
RUN apt-get install -y vim
RUN apt-get install -y sudo git

# Install nodejs and npm node-red
RUN apt-get install -y nodejs-legacy
RUN npm install -g node-red

# Can not Install SUSI node
#RUN npm install node-susi
#RUN npm install node-red-contrib-susi -g

# Install alljoyn node
RUN npm install node-alljoyn
RUN npm install node-red-contrib-alljoyn -g

# adv account
RUN useradd -m -k /home/adv adv -p adv -s /bin/bash -G sudo

# set up adv as sudo
RUN echo "adv ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
WORKDIR /home/adv
USER adv


# Install wsn node v2
RUN git clone --branch node-red-contrib-wsn https://github.com/ADVANTECH-Corp/docker-igw-app-x86.git /home/adv/node-red-contrib-wsn
RUN sudo mv node-red-contrib-wsn /usr/local/lib/node_modules/.

#Setting docker port and run node-red
EXPOSE 1880

# Run Node-red
ENTRYPOINT ["node-red"]

