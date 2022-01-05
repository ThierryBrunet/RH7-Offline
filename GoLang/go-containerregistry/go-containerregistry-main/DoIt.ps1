
go version

dir $env:HOMEPATH\go
dir $env:HOMEPATH\go\bin
dir $env:HOMEPATH\go\pkg

cd C:\docker\go-containerregistry\go-containerregistry-main
go install .\...


crane pull --help

crane pull hello-world c:\docker\crane-pull\hello-world.tar
crane pull redis c:\docker\crane-pull\redis.tar
crane pull alpine c:\docker\crane-pull\alpine.tar
crane pull daprio/dapr c:\docker\crane-pull\daprio-dapr.tar
crane pull openzipkin/zipkin c:\docker\crane-pull\openzipkin-zipkin.tar
crane pull k8s.gcr.io/etcd:3.4.13-0 c:\docker\crane-pull\k8s-gcr-io-etcd.tar

docker load --input c:\docker\crane-pull\hello-world.tar
docker load --input c:\docker\crane-pull\redis.tar
docker load --input c:\docker\crane-pull\alpine.tar
docker load --input c:\docker\crane-pull\daprio-dapr.tar
docker load --input c:\docker\crane-pull\openzipkin-zipkin.tar
docker load --input c:\docker\crane-pull\k8s-gcr-io-etcd.tar

docker run hello-world   # Works !!!!


# ATO Proxy: Windows command line:
set http_proxy=http://[user]:[pass]@[proxy_ip]:[proxy_port]/
set https_proxy=http://[user]:[pass]@[proxy_ip]:[proxy_port]/

# Set GOPROXY environment

# Bash (Linux or macOS)
export GOPROXY=https://goproxy.io,direct

# PowerShell (Windows)
$env:GOPROXY = "https://goproxy.io,direct"
