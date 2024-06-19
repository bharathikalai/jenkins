#### A simple jenkins pipeline to verify if the docker slave configuration is working as expected.

## install docker:

# step1
sudo apt install docker.io

# step 2
Give the docker permission to jenkins user 

sudo usermod -aG docker jenkins

# step 3
Restart the jenkins and docker aswell

sudo systemctl restart jenkins

sudo systemctl restart docker

### How to build jenkins pipeline ###

## Click manage jenkins
![alt text](image.png)    

## Click plugins
![alt text](image-1.png)  

## Click available plugin
![alt text](image-2.png)  

## Search docker pipeline and install 
![alt text](image-3.png)  

### How to create a new pipleine in jenkins

## Click new item
![alt text](image-4.png)   

## Enter the pipeline name and select pipeline
![alt text](image-5.png)  

## Configure your git repo link and file path
![alt text](image-8.png)

## Script path and branch main  & save
![alt text](image-9.png)

## Once you complete then run this build
![alt text](image-7.png)  