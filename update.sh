#!/bin/bash

UPDATE_FLODER="upgrade"

echo "Checking..."
git clone --branch installer https://github.com/ADVANTECH-Corp/docker-igw-image-x86 ${PWD}/$UPDATE_FOLDER

source ./version.sh
ORIGIN_VER=$EIS_VER
#echo "$ORIGIN_VER"

if [ -d "./upgrade" ]; then
  echo "Verifing..."
else  
  echo "Failed to check. Please check network can connect to Internet."
  exit 1
fi

cd ./$UPDATE_FOLDER
unset EIS_VER
source ./version.sh
LATEST_VER=$EIS_VER
unset EIS_VER
#echo "$LATEST_VER"
cd ../

# check version 
if [ $ORIGIN_VER == $LATEST_VER ]; then
 echo "$ORIGIN_VER is latest version."
elif [ $LATEST_VER \> $ORIGIN_VER ]; then
 #echo "Do you want to upgrade to $LATEST_VER[y/n]"
 
 echo "There is a new version for upgrading."
 read -t 10 -p "Do you want to upgrade $ORIGIN_VER to $LATEST_VER? [y/n](default:n) " ans
 if [ "$ans" == "y" ] || [ "$ans" == "Y" ]; then
    echo "Upgrading..."
    cp -r ./upgrade/. .
    ./deploy.sh
 else
    exit 0
 fi
else
 echo "$ORIGIN_VER is latest version"
fi





