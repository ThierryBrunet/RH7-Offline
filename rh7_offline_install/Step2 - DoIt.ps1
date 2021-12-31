# RH7 -- Off-Line Install - Docker
# --------------------------------

cat /etc/os-release
cat /etc/redhat-release

# Alternative - Copy all these rmp from RHEL-7.9 Server ISO disk, to /home/thierry/rpm

# Download from https://pkgs.org/download
https://pkgs.org/download/python-chardet -- http://mirror.centos.org/centos/7/os/x86_64/Packages/python-chardet-2.2.1-3.el7.noarch.rpm
https://pkgs.org/download/python-kitchen -- http://mirror.centos.org/centos/7/os/x86_64/Packages/python-kitchen-1.1.1-5.el7.noarch.rpm
https://pkgs.org/download/yum-utils      -- http://mirror.centos.org/centos/7/os/x86_64/Packages/yum-utils-1.1.31-54.el7_8.noarch.rpm

# Copy them to /home/thierry/rpm

# Install them
yum install -y /home/thierry/rpm/python-chardet-2.2.1-3.el7.noarch.rpm
yum install -y /home/thierry/rpm/python-kitchen-1.1.1-5.el7.noarch.rpm
yum install -y /home/thierry/rpm/yum-utils-1.1.31-54.el7_8.noarch.rpm


# Add repos (works only when online and when registered with RedHat)
# ---------
rhel-7-server-extras-rpms
rhel-7-server-optional-rpms


# download a RPM package without installing it
# --------------------------------------------
yumdownloader <package-name>
# The downloaded package will be saved in the current directory. You need to use root privilege because yumdownloader
# will update package index files during downloading. Unlike yum command above, none of the dependent package(s) will be downloaded.

# Alternatively
yum install --downloadonly --downloaddir=/tmp <package-name>

# Using yumdownloader to download rpm package and all dependencies
yumdownloader --downloadonly --downloaddir=/home/thierry/rpm/glibc glibc --resolve
yumdownloader --downloadonly --downloaddir=/home/thierry/rpm/glibc docker-ce docker-ce-cli containerd.io --resolve

# Using repotrack to download rpm package and all dependencies, in current directory
repotrack glibc

# Docker
# ------
(1/3): docker-ce-20.10.12-3.el7.x86_64.rpm
(2/3): containerd.io-1.4.12-3.1.el7.x86_64.rpm
(3/3): docker-ce-cli-20.10.12-3.el7.x86_64.rpm

# Get all Docker rpms and dependancies

https://pkgs.org/download/docker-ce       -- https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-20.10.12-3.el7.x86_64.rpm
https://pkgs.org/download/containerd.io   -- https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.4.12-3.1.el7.x86_64.rpm
https://pkgs.org/download/docker-ce-cli   -- https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-20.10.12-3.el7.x86_64.rpm

https://pkgs.org/download/docker-ce-rootless-extras -- https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-rootless-extras-20.10.12-3.el7.x86_64.rpm
https://pkgs.org/download/docker-scan-plugin -- https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-scan-plugin-0.12.0-3.el7.x86_64.rpm
https://pkgs.org/download/container-selinux  -- http://mirror.centos.org/centos/7/extras/x86_64/Packages/container-selinux-2.119.2-1.911c772.el7_8.noarch.rpm
https://pkgs.org/download/libseccomp         -- http://mirror.centos.org/centos/7/os/x86_64/Packages/libseccomp-2.3.1-4.el7.x86_64.rpm
https://pkgs.org/download/libcgroup          -- http://mirror.centos.org/centos/7/os/x86_64/Packages/libcgroup-0.41-21.el7.x86_64.rpm

https://pkgs.org/download/policycoreutils-python -- http://mirror.centos.org/centos/7/os/x86_64/Packages/policycoreutils-python-2.5-34.el7.x86_64.rpm

https://pkgs.org/download/audit-libs-python   -- http://mirror.centos.org/centos/7/os/x86_64/Packages/audit-libs-python-2.8.5-4.el7.x86_64.rpm
https://pkgs.org/download/libsemanage-python  -- http://mirror.centos.org/centos/7/os/x86_64/Packages/libsemanage-python-2.5-14.el7.x86_64.rpm
https://pkgs.org/download/checkpolicy         -- http://mirror.centos.org/centos/7/os/x86_64/Packages/checkpolicy-2.5-8.el7.x86_64.rpm
https://pkgs.org/download/python-IPy          -- http://mirror.centos.org/centos/7/os/x86_64/Packages/python-IPy-0.75-6.el7.noarch.rpm
https://pkgs.org/download/setools-libs        -- http://mirror.centos.org/centos/7/os/x86_64/Packages/setools-libs-3.3.8-4.el7.x86_64.rpm

https://pkgs.org/download/slirp4netns      -- http://mirror.centos.org/centos/7/extras/x86_64/Packages/slirp4netns-0.4.3-4.el7_8.x86_64.rpm
https://pkgs.org/download/fuse-overlayfs   -- http://mirror.centos.org/centos/7/extras/x86_64/Packages/fuse-overlayfs-0.7.2-6.el7_8.x86_64.rpm

https://pkgs.org/download/libfuse3.so.3  -- http://mirror.centos.org/centos/7/extras/x86_64/Packages/fuse3-libs-3.6.1-4.el7.x86_64.rpm
https://pkgs.org/download/libc.so.6 -- http://mirror.centos.org/centos/7/updates/x86_64/Packages/glibc-2.17-325.el7_9.x86_64.rpm

https://pkgs.org/download/glibc-common -- http://mirror.centos.org/centos/7/updates/x86_64/Packages/glibc-common-2.17-325.el7_9.x86_64.rpm

# Copy them to /home/thierry/rpm

# Install them
yum install -y /home/thierry/rpm/libcgroup-0.41-21.el7.x86_64.rpm
yum install -y /home/thierry/rpm/libseccomp-2.3.1-4.el7.x86_64.rpm

yum install -y /home/thierry/rpm/audit-libs-python-2.8.5-4.el7.x86_64.rpm
yum install -y /home/thierry/rpm/libsemanage-python-2.5-14.el7.x86_64.rpm
yum install -y /home/thierry/rpm/checkpolicy-2.5-8.el7.x86_64.rpm
yum install -y /home/thierry/rpm/python-IPy-0.75-6.el7.noarch.rpm
yum install -y /home/thierry/rpm/policycoreutils-python-2.5-34.el7.x86_64.rpm

yum install -y /home/thierry/rpm/setools-libs-3.3.8-4.el7.x86_64.rpm
yum install -y /home/thierry/rpm/container-selinux-2.119.2-1.911c772.el7_8.noarch.rpm

yum install -y /home/thierry/rpm/containerd.io-1.4.12-3.1.el7.x86_64.rpm
yum install -y /home/thierry/rpm/docker-scan-plugin-0.12.0-3.el7.x86_64.rpm /home/thierry/rpm/docker-ce-cli-20.10.12-3.el7.x86_64.rpm

yum install -y /home/thierry/rpm/glibc-common-2.17-325.el7_9.x86_64.rpm /home/thierry/rpm/glibc-2.17-325.el7_9.x86_64.rpm
yum install -y /home/thierry/rpm/slirp4netns-0.4.3-4.el7_8.x86_64.rpm
yum install -y /home/thierry/rpm/fuse3-libs-3.6.1-4.el7.x86_64.rpm
yum install -y /home/thierry/rpm/fuse-overlayfs-0.7.2-6.el7_8.x86_64.rpm

yum install -y /home/thierry/rpm/docker-ce-rootless-extras-20.10.12-3.el7.x86_64.rpm /home/thierry/rpm/docker-ce-20.10.12-3.el7.x86_64.rpm

# Start & Check Docker
# --------------------
docker --version
systemctl start docker

docker run hello-world

docker ps
docker images
