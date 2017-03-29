#!/bin/bash
source ./version.sh

#echo "cmd=$1"
image=advigw4x86/wisesnail-lib:v2.0.3
container_name=advigw-wisesnail-dev

if [ "$1" == "" ] || [ "$1" == "up" ]; then
	docker run --privileged -it --name $container_name --network=advantech_advigw-network -v $PWD:/home/adv/workspace:rw $image
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
    echo "Unknow command: wsn-dev.sh supports these pull, up, start, bash, stop, rm, down, and rmi "
fi




