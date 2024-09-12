## Docker commands  run this in your local


## Build the Docker image
```
sudo docker build -t pythonapp:latest 

```

## Run the container
```
sudo docker run -d -p 8080:8066 pythonapp:latest

```

## Debug the container
```
sudo docker logs conatinor_id -f 

```