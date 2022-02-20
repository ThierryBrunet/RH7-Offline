#region -- [1] Docker Hub Registry
#-----------------------------
https://hub.docker.com/repositories  # Thierry's repo

docker login
docker login --username=thierrybrunet --email=Thierry.Brunet@outlook.com
docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"

# As far as I know you have to use docker login. The credentials will be stored in /home/user/.docker/config.json for following docker pushes.
docker login -u ${USERNAME} -p ${PASSWORD} ${DOCKER_REPOSITORY}

docker images
# redis                                latest                                                  7614ae9453d1   8 days ago      113MB
# openzipkin/zipkin                    latest                                                  0614d392dbc2   10 days ago     155MB
# daprio/dapr                          1.5.1                                                   226aa2a3ceeb   3 weeks ago     214MB
# k8s.gcr.io/etcd                      3.4.13-0                                                0369cf4303ff   16 months ago   253MB

# SAVE
docker save -o c:\docker\etcd.tar ek8s.gcr.io/etcd:3.4.13-0  # not working
docker save -o c:\docker\etcd.tar 0369cf4303ff
docker save -o c:\docker\redi.tar redis:latest
docker save -o c:\docker\daprio.tar  daprio/dapr:1.5.1
docker save -o c:\docker\zipkin.tar  openzipkin/zipkin:latest

# push REDIS -- redis:latest
docker tag redis:latest thierrybrunet/opec-redis:v1
docker push thierrybrunet/opec-redis:v1

docker pull thierrybrunet/opec-redis:v1


# push ZIPKIN -- openzipkin/zipkin:latest
docker tag openzipkin/zipkin:latest thierrybrunet/opec-zipkin:v1
docker push thierrybrunet/opec-zipkin:v1

docker pull thierrybrunet/opec-zipkin:v1


# push daprio -- daprio/dapr:1.5.1
docker tag daprio/dapr:1.5.1 thierrybrunet/opec-daprio:v1
docker push thierrybrunet/opec-daprio:v1

docker pull thierrybrunet/opec-daprio:v1


# push ETCD -- k8s.gcr.io/etcd:3.4.13-0
docker tag k8s.gcr.io/etcd:3.4.13-0 thierrybrunet/opec-etcd:v1
docker push thierrybrunet/opec-etcd:v1

docker pull thierrybrunet/opec-etcd:v1

#endregion

#region -- [2] Redhat Quay Registry
#----------------------------------
https://quay.io/repository/

docker login quay.io --username=thierrybrunet_1 # --password=7Z[
# Username: thierrybrunet_1
# Password: ( password here)
# Email: thierry.brunet@outlook.com


# push REDIS -- redis:latest
docker tag redis:latest quay.io/thierrybrunet_1/opec-redis:v1
docker push quay.io/thierrybrunet_1/opec-redis:v1

docker pull quay.io/thierrybrunet_1/opec-redis:v1


# push ZIPKIN -- openzipkin/zipkin:latest
docker tag openzipkin/zipkin:latest quay.io/thierrybrunet_1/opec-zipkin:v1
docker push quay.io/thierrybrunet_1/opec-zipkin:v1

docker pull quay.io/thierrybrunet_1/opec-zipkin:v1


# push daprio -- daprio/dapr:1.5.1
docker tag daprio/dapr:1.5.1 quay.io/thierrybrunet_1/opec-daprio:v1
docker push quay.io/thierrybrunet_1/opec-daprio:v1

docker pull quay.io/thierrybrunet_1/opec-daprio:v1


# push ETCD -- k8s.gcr.io/etcd:3.4.13-0
docker tag k8s.gcr.io/etcd:3.4.13-0 quay.io/thierrybrunet_1/opec-etcd:v1
docker push quay.io/thierrybrunet_1/opec-etcd:v1

docker pull quay.io/thierrybrunet_1/opec-etcd:v1


# Docker commit
docker commit 07f2065197ef quay.io/thierrybrunet_1/myfirstrepo
docker push quay.io/thierrybrunet_1/opec-dapr


# push kickbase -- gcr.io/k8s-minikube/kicbase:v0.0.29
docker pull gcr.io/k8s-minikube/kicbase:v0.0.29

docker tag gcr.io/k8s-minikube/kicbase:v0.0.29 quay.io/thierrybrunet_1/opec-kicbase:v1
docker push quay.io/thierrybrunet_1/opec-kicbase:v1

docker tag gcr.io/k8s-minikube/kicbase:v0.0.29 quay.io/thierrybrunet_1/opec-kicbase:v2
docker push quay.io/thierrybrunet_1/opec-kicbase:v2

docker pull quay.io/thierrybrunet_1/opec-kicbase:v1
docker pull quay.io/thierrybrunet_1/opec-kicbase:v2
docker pull quay.io/thierrybrunet_1/opec-kicbase


#endregion

#region -- [3] Bitnami ETCD
#--------------------------
https://hub.docker.com/r/bitnami/etcd/
https://github.com/bitnami/bitnami-docker-etcd  #how-to-use-this-image

docker pull bitnami/etcd:latest
docker images
# bitnami/etcd   latest   21887a7c9ed7   9 hours ago     150MB

# Step 1: Create a network
$ docker network create app-tier --driver bridge

# Step 2: Launch the Etcd server instance
# Use the --network app-tier argument to the docker run command to attach the Etcd container to the app-tier network.

$ docker run -d --name Etcd-server \
    --network app-tier \
    --publish 2379:2379 \
    --publish 2380:2380 \
    --env ALLOW_NONE_AUTHENTICATION=yes \
    --env ETCD_ADVERTISE_CLIENT_URLS=http://etcd-server:2379 \
    bitnami/etcd:latest

# Step 3: Launch your Etcd client instance
# Finally we create a new container instance to launch the Etcd client and connect to the server created in the previous step:

$ docker run -it --rm \
    --network app-tier \
    --env ALLOW_NONE_AUTHENTICATION=yes \
    bitnami/etcd:latest Etcdctl --endpoints http://etcd-server:2379 put /message Hello


# Configuration
# The configuration can easily be setup by mounting your own configuration file on the directory /opt/bitnami/etcd/conf:

$ docker run --name Etcd -v /path/to/Etcd.conf.yml:/opt/bitnami/Etcd/conf/etcd.conf.yml bitnami/etcd:latest

# Using Docker Compose
# When not specified, Docker Compose automatically sets up a new network and attaches all deployed services to that
# network. However, we will explicitly define a new bridge network named app-tier. In this example we assume that
# you want to connect to the Etcd server from your own custom application image which is identified in the following snippet by the service name myapp.

version: '2'

networks:
  app-tier:
    driver: bridge

services:
  Etcd:
    image: 'bitnami/etcd:latest'
    environment:
      - ALLOW_NONE_AUTHENTICATION=yes
      - ETCD_ADVERTISE_CLIENT_URLS=http://etcd:2379
    ports:
      - 2379:2379
      - 2380:2380
    networks:
      - app-tier
    volumes:
      - /path/to/Etcd.conf.yml:/opt/bitnami/etcd/conf/etcd.conf.yml
  myapp:
    image: 'YOUR_APPLICATION_IMAGE'
    networks:
      - app-tier

# IMPORTANT:
# Please update the placeholder YOUR_APPLICATION_IMAGE in the above snippet with your application image
# In your application container, use the hostname etcd to connect to the Etcd server

# Launch the containers using:
$ docker-compose up -d
#endregion

#region -- [4] ETCD CoreOs
#-------------------------

https://quay.io/repository/coreos/etcd?tab=tags


docker pull quay.io/coreos/etcd:v3.5.1-arm64

#endregion


