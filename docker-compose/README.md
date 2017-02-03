docker-igw-image
EIS Docker images include  API-Gateway, Node-Red ,MQTT-BUS, Dust-Link,  WSN-Simulator, and WSN-Development sevices on x86_64 Linux OS Platform.

#Requirement
Arch: x86_64
OS: Ubuntu 16.04 x86_64
Docker Engine: 1.12.6
Docker Compose: 1.9.0

# Deploy
You can run deploy.sh to deploy the EIS software service to your  IoT Gateway with Docker Engine.

```go
Deploy EIS SW Service: Pull and run all EIS Docker container service
#./deploy.sh

Pull all EIS images
#./deploy.sh pull

Stop and remove all EIS containers
#./deploy.sh down

Remove all EIS Docker images
#./deploy.sh rmi

Restart all EIS Docker Container
#./deploy.sh restart



```

