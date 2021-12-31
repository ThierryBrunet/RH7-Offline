# ----------------------------------------------------------------
# use C:\Hyper-V\RH7 Offline\dapr_offline_install instead of below
# ----------------------------------------------------------------

# Belows does same as dapr_offline_install


# Import DAPR saved TAR containers
docker import /home/thierry/docker_tar/redis.tar redis:latest
docker import /home/thierry/docker_tar/etcd.tar k8s.gcr.io/etcd
docker import /home/thierry/docker_tar/zipkin.tar openzipkin/zipkin:latest
docker import /home/thierry/docker_tar/daprio.tar daprio/dapr:1.5.1

docker images
docker rmi 6613e82115c6 72ff87b360c8 feb5d9fea6a5 --force


# Copy dapr CLI init file to  -- see https://docs.dapr.io/getting-started/install-dapr-cli/
cp /home/thierry/dapr_cli/dapr /usr/local/bin
chmod 0755 /usr/local/bin/dapr
dapr
dapr --version
dapr --version

# DAPR Manual install
dapr init --slim
    Downloading binaries and setting up components...
    ✅  Downloaded binaries and completed components set up.
    ℹ️  daprd binary has been installed to /root/.dapr/bin.
    ℹ️  placement binary has been installed to /root/.dapr/bin.


# Dapr runtime installed to /root/.dapr/bin, you may run the following to add it to your path if you want to run daprd directly:
echo $PATH
export PATH=$PATH:/root/.dapr/bin

# Misc
docker ps
dapr dashboard

dapr uninstall

#

# Linux environment variables
# ---------------------------
printenv HOME
printenv PATH
printenv

# Alternative (to fix incorrect path)
PATH=$PATH:/usr/local/bin; export PATH


# DAPR download
# -------------

https://github.com/dapr/dapr/releases/download/v1.5.1/dapr-operator.yaml
https://github.com/dapr/dapr/releases/download/v1.5.1/dapr-operator.yaml.sha256


https://github.com/dapr/dapr/releases/download/v1.5.1/daprd_linux_amd64.tar.gz
https://github.com/dapr/dapr/releases/download/v1.5.1/daprd_linux_amd64.tar.gz.sha256


https://github.com/dapr/dapr/releases/download/v1.5.1/injector_linux_amd64.tar.gz
https://github.com/dapr/dapr/releases/download/v1.5.1/injector_linux_amd64.tar.gz.sha256

https://github.com/dapr/dapr/releases/download/v1.5.1/placement_linux_amd64.tar.gz
https://github.com/dapr/dapr/releases/download/v1.5.1/placement_linux_amd64.tar.gz.sha256


https://github.com/dapr/dapr/releases/download/v1.5.1/operator_linux_amd64.tar.gz
https://github.com/dapr/dapr/releases/download/v1.5.1/operator_linux_amd64.tar.gz.sha256


https://github.com/dapr/dapr/releases/download/v1.5.1/grafana-actor-dashboard.json
https://github.com/dapr/dapr/releases/download/v1.5.1/grafana-actor-dashboard.json.sha256

https://github.com/dapr/dapr/releases/download/v1.5.1/grafana-sidecar-dashboard.json
https://github.com/dapr/dapr/releases/download/v1.5.1/grafana-sidecar-dashboard.json.sha256

https://github.com/dapr/dapr/releases/download/v1.5.1/grafana-system-services-dashboard.json
https://github.com/dapr/dapr/releases/download/v1.5.1/grafana-system-services-dashboard.json.sha256

https://github.com/dapr/dapr/releases/download/v1.5.1/sentry_linux_amd64.tar.gz
https://github.com/dapr/dapr/releases/download/v1.5.1/sentry_linux_amd64.tar.gz.sha256


