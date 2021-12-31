# RH7 -- Off-Line Install -- Powershell
# -------------------------------------

cat /etc/os-release
cat /etc/redhat-release

# Powershell direct download
https://github.com/PowerShell/PowerShell/releases/download/v7.2.1/powershell-lts-7.2.1-1.rh.x86_64.rpm

# Download dependancies from https://pkgs.org/download
https://pkgs.org/download/libicu
http://mirror.centos.org/altarch/7/os/aarch64/Packages/libicu-50.2-4.el7_7.aarch64.rpm

# Copy them to /home/thierry/rpm

# Powershell Install
yum install -y /home/thierry/rpm/libicu-50.2-4.el7_7.x86_64.rpm
yum install -y /home/thierry/rpm/powershell-lts-7.2.1-1.rh.x86_64.rpm  # Requires: libicu
pwsh
