FROM alpine

RUN apk update && apk add --no-cache git nodejs && \
    git clone https://github.com/ADVANTECH-Corp/APIGateway.git /home/adv/APIGateway && \
    cp APIGateway/script/advigw-restapi /usr/local/bin/. && \
    apk del git && rm -rf /tmp/* /var/cache/apk/*
    
EXPOSE 3000

ENTRYPOINT ["advigw-restapi"]

