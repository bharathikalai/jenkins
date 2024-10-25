# sonnar-scanner installation

## install java

```
sudo apt update
sudo apt install openjdk-11-jdk -y
java -version

```

## Sonarqube installation in ubuntu

```
mkdir sonar-installation

cd sonar-installation

wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-5.0.1.3006-linux.zip


unzip sonar-scanner-cli-5.0.1.3006-linux.zip
sudo mv sonar-scanner-5.0.1.3006-linux /opt/sonar-scanner

```

```

nano ~/.bashrc
```
```
export PATH=$PATH:/opt/sonar-scanner/bin
export SONAR_SCANNER_HOME=/opt/sonar-scanner
```

```
source ~/.bashrc
```


```
sonar-scanner -v
```

```
sudo nano /opt/sonar-scanner/conf/sonar-scanner.properties
```

```
# Add your SonarQube server details here
sonar.host.url=http://localhost:9000

sonar.login=<sonar-qube-admin-token>
```




## Add in system global config env in jenkins


```
name = PATH+EXTRA

value = /opt/sonar-scanner/bin:$PATH


```