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


# Kubernetes downlaods:
# ---------------------
https://github.com/kubernetes/kubernetes/blob/master/CHANGELOG/CHANGELOG-1.23.md

https://dl.k8s.io/v1.23.4/kubernetes-client-linux-arm64.tar.gz
https://dl.k8s.io/v1.23.4/kubernetes-server-linux-amd64.tar.gz
https://dl.k8s.io/v1.23.4/kubernetes-node-linux-amd64.tar.gz

# push other container images
# ---------------------------
# https://github.com/kubernetes/kubernetes/blob/master/CHANGELOG/CHANGELOG-1.23.md#container-images

# k8s.gcr.io/conformance-amd64:v1.23.4
# k8s.gcr.io/kube-apiserver-amd64:v1.23.4
# k8s.gcr.io/kube-controller-manager-amd64:v1.23.4
# k8s.gcr.io/kube-proxy-amd64:v1.23.4
# k8s.gcr.io/kube-scheduler-amd64:v1.23.4


docker login quay.io --username=thierrybrunet_1 --password=7Zazouille[2] # --password=7Z[

docker pull k8s.gcr.io/conformance-amd64:v1.23.4
docker tag k8s.gcr.io/conformance-amd64:v1.23.4 quay.io/thierrybrunet_1/opec-conformance:v1.23.4
docker push quay.io/thierrybrunet_1/opec-conformance:v1.23.4


docker pull k8s.gcr.io/kube-apiserver-amd64:v1.23.4
docker tag k8s.gcr.io/kube-apiserver-amd64:v1.23.4 quay.io/thierrybrunet_1/opec-kube-apiserver:v1.23.4
docker push quay.io/thierrybrunet_1/opec-kube-apiserver:v1.23.4


docker pull k8s.gcr.io/kube-controller-manager-amd64:v1.23.4
docker tag k8s.gcr.io/kube-controller-manager-amd64:v1.23.4 quay.io/thierrybrunet_1/opec-kube-controller-manager:v1.23.4
docker push quay.io/thierrybrunet_1/opec-kube-controller-manager:v1.23.4


docker pull k8s.gcr.io/kube-proxy-amd64:v1.23.4
docker tag k8s.gcr.io/kube-proxy-amd64:v1.23.4 quay.io/thierrybrunet_1/opec-kube-proxy:v1.23.4
docker push quay.io/thierrybrunet_1/opec-kube-proxy:v1.23.4


docker pull k8s.gcr.io/kube-scheduler-amd64:v1.23.4
docker tag k8s.gcr.io/kube-scheduler-amd64:v1.23.4 quay.io/thierrybrunet_1/opec-kube-scheduler:v1.23.4
docker push quay.io/thierrybrunet_1/opec-kube-scheduler:v1.23.4



# Get Windows Admin
docker pull mcr.microsoft.com/powershell
cd "C:\Hyper-V\RH7 Offline\MiniKube_K8_offine_install"
dir
docker build -t quay.io/thierrybrunet_1/opec-admin-center:v2110 .
docker push quay.io/thierrybrunet_1/opec-admin-center:v2110



# --- for crane pull
# ------------------

crane pull quay.io/thierrybrunet_1/opec-conformance:v1.23.4
docker load
docker tag quay.io/thierrybrunet_1/opec-conformance:v1.23.4 k8s.gcr.io/conformance-amd64:v1.23.4

crane pull quay.io/thierrybrunet_1/opec-kube-apiserver:v1.23.4
docker load
docker tag quay.io/thierrybrunet_1/opec-kube-apiserver:v1.23.4 k8s.gcr.io/kube-apiserver-amd64:v1.23.4

crane pull quay.io/thierrybrunet_1/opec-kube-controller-manager:v1.23.4
docker load
docker tag quay.io/thierrybrunet_1/opec-kube-controller-manager:v1.23.4 k8s.gcr.io/kube-controller-manager-amd64:v1.23.4

crane pull quay.io/thierrybrunet_1/opec-kube-proxy:v1.23.4
docker load
docker tag quay.io/thierrybrunet_1/opec-kube-proxy:v1.23.4 k8s.gcr.io/kube-proxy-amd64:v1.23.4

crane pull quay.io/thierrybrunet_1/opec-kube-scheduler:v1.23.4
docker load
docker tag quay.io/thierrybrunet_1/opec-kube-scheduler:v1.23.4 k8s.gcr.io/kube-scheduler-amd64:v1.23.4

crane pull quay.io/thierrybrunet_1/opec-admin-center:v2110
docker load



