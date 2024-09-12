# Jenkins type of agent

## Run on a Specific Jenkins Node:

```
pipeline {
    agent {
        label 'slave-1-compute-engine'
    }

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
    }
}

```

## Run in a Docker Container(master):

```
pipeline {
    agent {
        docker {
            image 'ubuntu:latest'
            args '-v /tmp:/tmp'  // Optional arguments like volume mounting
        }
    }

    stages {
        stage('Hello') {
            steps {
                echo 'Hello from Docker'
            }
        }
    }
}
```
## Run in a Docker Container(slave):
```
pipeline {
    agent {
        label 'slave-node-label'
    }

    stages {
        stage('Hello') {
            agent {
                docker {
                    image 'openjdk:11'
                }
            }
            steps {
                echo 'Running Docker on the slave node'
            }
        }
    }
}
```



## Run on Any Available Agent:

```
pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
    }
}
```
## Specify Agents at the Stage Level:

```
pipeline {
    agent none  // No agent for the entire pipeline

    stages {
        stage('Hello') {
            agent {
                label 'slave-1-compute-engine'
            }
            steps {
                echo 'Hello World from specific node'
            }
        }
    }
}
```
