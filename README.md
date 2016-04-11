# Jenkins swarm slave

[`andretadeu/jenkins-swarm-slave`](https://hub.docker.com/r/andretadeu/jenkins-swarm-slave/), a fork from [`csanchez/jenkins-swarm-slave`](https://hub.docker.com/r/csanchez/jenkins-swarm-slave/)

A [Jenkins swarm](https://wiki.jenkins-ci.org/display/JENKINS/Swarm+Plugin) slave.


## Running

To run this container in your computer, you'll need a running Jenkins Docker container. The commands bellow will do the job:

```bash
docker run -d --name jenkins -p 8080:8080 -p 50000:50000 andretadeu/jenkins-swarm
docker run -d --name jenkins-slave-01 --link jenkins:jenkins andretadeu/jenkins-swarm-slave
```

# Building

    docker build -t <your name or company>/jenkins-swarm-slave .
