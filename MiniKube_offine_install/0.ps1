#region -- [2] Redhat Quay Registry
#----------------------------------
https://quay.io/repository/

docker login quay.io --username=thierrybrunet_1 # --password=7Z[
# Username: thierrybrunet_1
# Password: ( password here)
# Email: thierry.brunet@outlook.com



# push kickbase -- gcr.io/k8s-minikube/kicbase:v0.0.29
docker pull gcr.io/k8s-minikube/kicbase:v0.0.29
docker tag gcr.io/k8s-minikube/kicbase:v0.0.29 quay.io/thierrybrunet_1/opec-kicbase:v1
docker push quay.io/thierrybrunet_1/opec-kicbase:v1

docker pull quay.io/thierrybrunet_1/opec-kickbase:v1

docker pull quay.io/thierrybrunet_1/opec-kicbase
