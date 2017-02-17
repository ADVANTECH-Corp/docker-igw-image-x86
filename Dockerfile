FROM advigw4x86/service-template

#wsn-simulator

#MAINTAINER Advantech

WORKDIR /home/adv

RUN apt-get update &&\
    apt-get install -y git-core &&\
    git clone --branch wsn-simulator https://github.com/ADVANTECH-Corp/docker-igw-app-x86.git ./wsn-simulator && \
	cp -r ./wsn-simulator/*.* ./wsn-simulator/wsn ./wsn-simulator/wisesim . && \
    rm -rf ./wsn-simulator && \
    apt-get autoremove --purge -y git-core


# Run Dust Link Service
#ENTRYPOINT ["./wisesim"]
