## Command


### Install trivy in your local

```
# Download the Trivy Debian package
wget https://github.com/aquasecurity/trivy/releases/download/v0.45.0/trivy_0.45.0_Linux-64bit.deb

# Install the downloaded package
sudo dpkg -i trivy_0.45.0_Linux-64bit.deb

# Fix any missing dependencies
sudo apt-get install -f
```

### Check the trivy version

```
trivy --version

```


### Docker commands
```
docker build -t my-python-app .
trivy image my-python-app
```


## Trivy jenkins command

```
trivy --no-progress --exit-code 1 --severity HIGH,CRITICAL your_docker_image
```



## Trivy Can Scan

### Docker image

```
trivy image my-docker-image

```

### File Systems

```
trivy fs /path/to/directory

```


### Git Repositories

```
trivy repo https://github.com/my-repo/my-project

```


### Infrastructure-as-Code (IaC) Files

```
trivy config -f terraform /path/to/terraform/files
trivy config -f cloudformation /path/to/terraform/files

```

###  Dependency Files


```
trivy fs --vuln-type=os,library --format json -o report.json /path/to/requirements.txt

```


### K8s

```
trivy config -f kubernetes /path/to/kubernetes/manifests

```