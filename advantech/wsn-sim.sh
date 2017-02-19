#!/bin/bash
source ./version.sh

#echo "cmd=$1"

IMAGE_NAME=advigw4x86/wsn-simulator:${WSN_SIMULATOR_TAG}
CONTAINER_NAME=advigw-wsn-simulator

if [ "$1" == "" ] || [ "$1" == "up" ]; then
	docker run -it --name $CONTAINER_NAME $IMAGE_NAME

	docker network connect advantech_advigw-network $CONTAINER_NAME

	docker exec -it $CONTAINER_NAME bash
elif [ "$1" == "bash" ]; then
	docker start $CONTAINER_NAME
	docker exec -it $CONTAINER_NAME bash
elif [ "$1" == "start" ]; then
	docker start $CONTAINER_NAME
elif [ "$1" == "stop" ]; then
	docker stop $CONTAINER_NAME
elif [ "$1" == "rm" ]; then
	docker stop $CONTAINER_NAME
	docker rm $CONTAINER_NAME
elif [ "$1" == "down" ] || [ "$1" == "rmi" ]; then
	docker stop $CONTAINER_NAME
	docker rm $CONTAINER_NAME
	docker rmi $IMAGE_NAME
fi




