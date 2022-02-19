cd /home/thierry
su thierry
ls -al
cd Downloads
mkdir temp && cd temp

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

minikube start
kubectl get po -A


minikube kubectl -- get po -A
kubectl get po -A

# You can also make your life easier by adding the following to your shell config:
alias kubectl="minikube kubectl --"
kubectl get po -A

minikube dashboard

# Deploy applications
# Create a sample deployment and expose it on port 8080:

kubectl create deployment hello-minikube --image=k8s.gcr.io/echoserver:1.4
kubectl expose deployment hello-minikube --type=NodePort --port=8080

# It may take a moment, but your deployment will soon show up when you run:
kubectl get services hello-minikube

# The easiest way to access this service is to let minikube launch a web browser for you:
minikube service hello-minikube

# Alternatively, use kubectl to forward the port:
kubectl port-forward service/hello-minikube 7080:8080




# LoadBalancer deployments
# ------------------------
# To access a LoadBalancer deployment, use the “minikube tunnel” command. Here is an example deployment:
kubectl create deployment balanced --image=k8s.gcr.io/echoserver:1.4  
kubectl expose deployment balanced --type=LoadBalancer --port=8080


# In another window, start the tunnel to create a routable IP for the ‘balanced’ deployment:
minikube tunnel

# To find the routable IP, run this command and examine the EXTERNAL-IP column:
kubectl get services balanced

# Your deployment is now available at <EXTERNAL-IP>:8080



# Manage your cluster
# -------------------
# Pause Kubernetes without impacting deployed applications:
minikube pause

# Unpause a paused instance:
minikube unpause

# Halt the cluster:
minikube stop

# Increase the default memory limit (requires a restart):
minikube config set memory 16384

# Browse the catalog of easily installed Kubernetes services:
minikube addons list

# Create a second cluster running an older Kubernetes release:
minikube start -p aged --kubernetes-version=v1.16.1

# Delete all of the minikube clusters:
minikube delete --all