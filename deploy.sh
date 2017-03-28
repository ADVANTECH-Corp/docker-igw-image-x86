#!/bin/bash

#version control
./version.sh

adv_composefiles=`find ./advantech -name *.yml`

adv_bashfiles=`find ./advantech -type f -name \*.sh`

exten_composefiles=()

actions=(start stop restart pause unpause rmi rm down pull update)


#for bash in ${adv_bashfiles[@]}; do
#  echo ${bash}
#done

# combine all yml files
for yml in ${adv_composefiles[@]}; do
 compose_param+=" -f ${yml} "
done

for yml in ${exten_composefiles[@]}; do
  compose_param+=" -f ${yml} "
done

# check action
for ac in ${actions[@]}; do
   if [ "$1" == $ac ]; then
   action=$1
   fi
done

# version
if [ "$1" == "version" ]; then
  source ./version.sh
  echo "EIS version is: ${EIS_VER}"
  exit 0 
fi

# update
if [ "$1" == "update" ]; then
  ./update.sh
  exit 0
fi

# check is run docker in shcript not compose
for bashfile in ${adv_bashfiles[@]}; do
 filename=`echo ${bashfile} | sed 's/.*\///'`
 if [ "$1" == ${filename} ]; then
  ${bashfile} $2
  exit 0
 fi
done


# rm: == down
if [ "$1" == "rm" ]; then
 action="down"
fi

# rmi: must to down
if [ "$1" == "rmi" ]; then
 action="down"
fi


# default action: up
if [ "$1" == "" ]; then
 action="up -d"
fi

# warming message
if [ "$1" != "" ] && [ "$action" == "" ]; then 
echo "You enter acton ${1} is not support"
echo "deploy.sh supports '${actions[@]}'"
exit 0
fi

# docker-compose
exec_cmd="docker-compose" 
exec_cmd+=${compose_param} 
exec_cmd+=${action}

echo "Execute: ${exec_cmd}"

if [ "${action}" != "" ]; then
 ${exec_cmd}
fi

if [ "$1" == "rmi" ]; then

images=`docker images | grep "advigw4x86" | awk '{print $3}'`

for image in ${images[@]}; do
 #echo "images ${image}"
 docker rmi ${image}
done
exit 0
fi




