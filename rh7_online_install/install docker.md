https://computingforgeeks.com/install-docker-ce-on-rhel-7-linux

Install Docker CE on RHEL 7 Linux
ByJosphat Mutai-March 9, 2020230480
The steps shared here are for the installation of Docker CE on RHEL 7 Linux. Docker is the main dominant container runtime engine used for Development and running of micro-serviced applications in production. There are two editions of Docker available for installation on a RHEL 7 Desktop / Linux machine.

Docker Community Edition ( Docker CE)
Docker Enterprise Edition ( Docker EE)
This guide is for installation of the Docker Community Edition on RHEL 7. If you have interest in Docker Enterprise Edition, check its features and the key differences from Community edition.
So let’s install Docker CE on RHEL 7 Linux system.

Step 1: Register your RHEL 7 server
Start by registering your RHEL 7 server with Red Hat Subscription Management or Satellite server.
sudo subscription-manager register --auto-attach
You’ll be prompted to provide your Red Hat portal username and password.

Step 2: Enable required repositories
You need to enable the following repositories to install Docker Community Edition on RHEL 7. They contain a number of dependencies required to run Docker.
sudo subscription-manager repos --enable=rhel-7-server-rpms \
  --enable=rhel-7-server-extras-rpms \
  --enable=rhel-7-server-optional-rpms


Step 3: Install Docker CE on RHEL 7 Linux
Install required packages before adding the Docker CE Yum repository.

sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
Add stable Docker CE repository to your RHEL 7 system.

 sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
Finally install latest release of Docker CE on RHEL 7 with the latest and containerd.

sudo yum install docker-ce docker-ce-cli containerd.io
If you want to view all versions of Docker available, use:

$ sudo yum list docker-ce --showduplicates | sort -r


Step 4: Start and enable Docker service
Now start and enable Docker service to start at boot.

sudo systemctl enable --now docker.service
Check docker version:

$ docker version
Client: Docker Engine - Community
 Version:           19.03.7
 API version:       1.40
 Go version:        go1.12.17
 Git commit:        7141c199a2
 Built:             Wed Mar  4 01:24:10 2020
 OS/Arch:           linux/amd64
 Experimental:      false

Server: Docker Engine - Community
 Engine:
  Version:          19.03.7
  API version:      1.40 (minimum version 1.12)
  Go version:       go1.12.17
  Git commit:       7141c199a2
  Built:            Wed Mar  4 01:22:45 2020
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          1.2.13
  GitCommit:        7ad184331fa3e55e52b890ea95e65ba581ae3429
 runc:
  Version:          1.0.0-rc10
  GitCommit:        dc9208a3303feef5b3839f4323d9beb36df0a9dd
 docker-init:
  Version:          0.18.0
  GitCommit:        fec3683

  
Step 5: Set insecure registries / Block registries
If you have local Docker registries without SSL encryption for access, you may need to whitelist them.
$ sudo vim /etc/containers/registries.conf
.....
[registries.insecure]
registries = ["reg1.example.com","reg2.example.com"]
To block access to a registry, add the registry URL under registries.block section.

[registries.block]
registries = ['reg10.example.com']
Restart docker service if you make a change to the configuration file.

sudo systemctl restart docker
Test Docker installation on RHEL 7.

$ docker run hello-world

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
https://docs.docker.com/get-started/
Tags:

