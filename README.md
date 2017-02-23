docker-igw-image
This Docker image can support Node-Red ,MQTT sevice for x86_64 Linux OS Platform.

# Deploy
You can run deploy_eis.sh to deploy the EIS software service to your x86_64 IoT Gateway with Docker Engine.

```go
Deploy EIS SW Service: Pull and run all EIS Docker container service
You can checkout "installer" branch to deploy EIS container service
git clone --branch installer https://github.com/ADVANTECH-Corp/docker-igw-image-x86.git

```



# Dockerfile

You can change branch to checkout each image's Dockerfile

Branch:

## node-red
This Docker image is the Node-Red sevice

## mqtt-bus
This Docker image is the MQTT Bus sevice

## api-gw
This Docker image is the API Gateway service

## wsn-simulator
This Docker image is the WSN Simulator

## wisesnail-lib-dev
Thsi Docker image is the WSN developing environment includes wisesnail library and sample code.

## hdd-failure-predict
This Docker image is the HDD PMQ

## dust-link
This Docker image is the wsn dust link manager with USB0 interface
