#!/bin/bash

EIS_VER=v2.0.2
MQTT_BUS_TAG=latest
API_GW_TAG=latest
NODE_RED_TAG=latest
WSN_SIMULATOR_TAG=latest
WSN_DEV_TAG=latest
DUST_LINK_TAG=latest
HDD_PMQ_TAG=latest


echo "MQTT_BUS_TAG=${MQTT_BUS_TAG}" > .env
echo "API_GW_TAG=${API_GW_TAG}" >> .env
echo "NODE_RED_TAG=${NODE_RED_TAG}" >> .env
echo "WSN_SIMULATOR_TAG=${WSN_SIMULATOR_TAG}" >> .env
echo "WSN_DEV_TAG=${WSN_DEV_TAG}" >> .env
echo "DUST_LINK_TAG=${DUST_LINK_TAG}" >> .env
echo "HDD_PMQ_TAG=${HDD_PMQ_TAG}" >> .env
