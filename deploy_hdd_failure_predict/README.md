#How to deploy HDD failure predict container

- Step1: Install Docker on x86 Ubuntu
https://docs.docker.com/engine/installation/linux/ubuntulinux/

- Step2: run [deploy_hdd_failure_predict_container.sh](https://github.com/ADVANTECH-Corp/docker-igw-image-x86/blob/master/deploy_hdd_failure_predict/deploy_hdd_failure_predict_container.sh) to deploy `mqtt-bus` and `hdd_failure_predict` containers
<pre>
$ ./deploy_hdd_failure_predict_container.sh
</pre>

#How to get mqtt-bus IP

- Step1: find `mqtt-bus` container ID
<pre>
$ sudo docker ps
</pre> 

![result link](https://github.com/ADVANTECH-Corp/docker-igw-image-x86/blob/master/deploy_hdd_failure_predict/images/docker_20161202_2.png)

- Step2: using `container ID` to get `mqtt-bus` IP
<pre>
$ sudo docker inspect \<container ID\>
</pre>

![result link](https://github.com/ADVANTECH-Corp/docker-igw-image-x86/blob/master/deploy_hdd_failure_predict/images/docker_20161202_3.png)

#How to test HDD failure predict container
