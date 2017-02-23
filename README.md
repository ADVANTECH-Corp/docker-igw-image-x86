docker-igw-image
EIS includes  API-Gateway, Node-Red ,MQTT-BUS, Dust-Link,  WSN-Simulator, HDD-PMQ, and WSN-Development Docker Container Sevices in x86_64 Linux OS Platform.

#Requirement
Arch: x86_64
OS: Ubuntu 14.04 x86_64
Docker Engine: 1.12.6
Docker Compose: 1.9.0

# Deploy
You can run deploy.sh to deploy the EIS software service to your  IoT Gateway with Docker Engine.

```go
Deploy EIS SW Service: Pull and run all EIS Docker container service
$./deploy.sh

Pull all EIS images
$./deploy.sh pull

Start all EIS Container Service
$./deploy.sh start

Stop all EIS Container Service
$./deploy.sh stop

Stop and remove all EIS Container Service
$./deploy.sh down

Restart all EIS Docker Container Service
$./deploy.sh restart

Remove all EIS Docker image
$./deploy.sh rmi

Run WSN Simulator
$./deploy.sh wsn-sim.sh

Run WSN Development Environment
$./deploy.sh wsn-dev.sh


```

