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


###  Repositories (GIT)

```
trivy repo --format table https://github.com/bharathikalai/Docker

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


## AWS

```
  # Scan your AWS AMI
  $ trivy aws --service ec2

  $ trivy aws --format json --output report.json 

  $ trivy vm --scanners vuln ami:ami-022ce6f32988af5fa

  # Scan your AWS EBS snapshot
  $ trivy vm ebs:${your_ebs_snapshot_id}

```