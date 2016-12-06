docker-igw-image
This Docker image can support Node-Red ,MQTT sevice for x86_64 Linux OS Platform.

# Deploy
You can run deploy_eis.sh to deploy the EIS software service to your  IoT Gateway with Docker Engine.

```go
Deploy EIS SW Service: Pull and run all EIS Docker container service
$./deploy_eis.sh

Stop/Remove all EIS Docker images
$./deploy_eis.sh rmi

Restart all EIS Docker Container
$./deploy_eis.sh restart
```

You can change branch to checkout each image's Dockerfile
Branch:

# node-red
This Docker image can support Node-Red sevice

# mqtt_bus
This Docker image can support MQTT Bus sevice

# apigw_service
This Docker image can support API Gateway service

