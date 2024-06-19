A simple jenkins pipeline to verify if the docker slave configuration is working as expected.

install docker:

sudo apt install docker.io

give the docker permission to jenkins user 

sudo usermod -aG docker jenkins

restart the jenkins and docker aswell

sudo systemctl restart jenkins

sudo systemctl restart docker

![alt text](image.png)    click manage jenkins

![alt text](image-1.png)  click plugins

![alt text](image-2.png)  click available plugin

![alt text](image-3.png)  search docker pipeline and install 

how to create a new pipleine in jenkins

![alt text](image-4.png)   click new item

![alt text](image-5.png)  enter the pipeline name and select pipeline

![alt text](image-6.png)  configure your git repo link and file path

![alt text](image-7.png)  once you complete then run this build