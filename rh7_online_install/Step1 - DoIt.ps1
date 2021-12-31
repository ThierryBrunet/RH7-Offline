sudo subscription-manager register --auto-attach

cat /etc/os-release
cat /etc/redhat-release

# [root@rh7 ~]# cat /etc/redhat-release
# Red Hat Enterprise Linux Server release 7.9 (Maipo)


# Add repos
# ---------
subscription-manager repos --enable  rhel-7-server-extras-rpms
subscription-manager repos --enable  rhel-7-server-optional-rpms

# subscription-manager repos --enable  rhel-7-server-rpms

# subscription-manager repos --enable  rhel-7-server-rh-common-rpms
# subscription-manager repos --enable  rhel-7-server-supplementary-rpms
# subscription-manager repos --enable  rhel-7-server-optional-rpms


# subscription-manager repos --enable  rhel-server-rhscl-7-rpms
# yum install rh-python35-python-pip


# subscription-manager repos --enable  rhel-7-server-devtools-rpms
# subscription-manager repos --enable  rhel-7-server-satellite-tools-6.10-rpms


# Powershell
# ------------

# Register the Microsoft RedHat repository
curl https://packages.microsoft.com/config/rhel/7/prod.repo | sudo tee /etc/yum.repos.d/microsoft.repo

# Install PowerShell
sudo yum install -y powershell

# Start PowerShell
pwsh

# Installation via direct download
PowerShell 7.2.1 - https://github.com/PowerShell/PowerShell/releases/download/v7.2.1/powershell-lts-7.2.1-1.rh.x86_64.rpm
sudo yum install https://github.com/PowerShell/PowerShell/releases/download/v7.2.1/powershell-lts-7.2.1-1.rh.x86_64.rpm

yum install /home/thierry/rpm/powershell-lts-7.2.1-1.rh.x86_64.rpm


# Docker
# ------
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io



# Python
# ------
https://developers.redhat.com/blog/2018/08/13/install-python3-rhel#


# Step 6 - Run the Python app with Dapr
cd /home/thierry/dapr/quickstarts/hello-world/python
subscription-manager repos --enable  rhel-server-rhscl-7-rpms

yum -y install @development
yum -y install rh-python36
yum -y install rh-python36-numpy \
 rh-python36-scipy \
 rh-python36-python-tools \
 rh-python36-python-six
scl enable rh-python36 bash

python3 -V

# Create a Python virtual environment and activate it
cd /home/thierry
python3 -m venv py36-venv
source py36-venv/bin/activate
pip install --upgrade pip
python3 -m pip install requests

# Start bash new session using virtual environment:
scl enable rh-python36 bash
cd /home/thierry/dapr/quickstarts/hello-world/python
python3 -m venv py36-venv
source py36-env/bin/activate
pip install --upgrade pip
python3 -m pip install requests
dapr run --app-id pythonapp python3 app.py

# Step 7 - Cleanup
# To stop your services from running, simply stop the "dapr run" process. Alternatively, you can spin down each of your services with the Dapr CLI "stop" command. For example, to spin down both services, run these commands in a new terminal:
dapr stop --app-id nodeapp
dapr stop --app-id pythonapp
dapr list

