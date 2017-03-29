#!/bin/bash

#echo "cmd=$1"

image=advigw4x86/wsn-simulator:v2.0.3
container_name=advigw-wsn-simulator

if [ "$1" == "" ] || [ "$1" == "up" ]; then
	docker run -it --name $container_name --network=advantech_advigw-network $image
elif [ "$1" == "bash" ]; then
	docker start $container_name
	docker exec -it $container_name bash
elif [ "$1" == "start" ]; then
	docker start $container_name
elif [ "$1" == "stop" ]; then
	docker stop $container_name
elif [ "$1" == "rm" ] || [ "$1" == "down" ]; then
	docker stop $container_name
	docker rm $container_name
elif [ "$1" == "rmi" ]; then
	docker stop $container_name
	docker rm $container_name
	docker rmi $image
elif [ "$1" == "pull" ]; then
        docker pull $image
else
    echo "Unknow command: Script only supports pull, up, start, bash, stop, rm, down, and rmi!"
fi




