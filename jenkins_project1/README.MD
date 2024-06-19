A simple jenkins pipeline to verify if the docker slave configuration is working as expected.

install docker:

sudo apt install docker.io

give the docker permission to jenkins user 

sudo usermod -aG docker jenkins

restart the jenkins and docker aswell

sudo systemctl restart jenkins

sudo systemctl restart docker

###How to build jenkins pipeline

![alt text](image.png)    ##Click manage jenkins

![alt text](image-1.png)  ##Click plugins

![alt text](image-2.png)  ##Click available plugin

![alt text](image-3.png)  ##Search docker pipeline and install 

###How to create a new pipleine in jenkins

![alt text](image-4.png)   ##Click new item

![alt text](image-5.png)  ##Enter the pipeline name and select pipeline

![alt text](image-6.png)  ##Configure your git repo link and file path

![alt text](image-7.png)  ##Once you complete then run this build