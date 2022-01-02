# File: /home/thierry/opec/Step1 - Verify dapr install/3 - Firewall Config.ps1

sudo firewall-cmd --state

# Disable Firewall
# You can temporarily stop the FirewallD service with the following command:

sudo systemctl stop firewalld

# However this change will be valid for the current runtime session only.

# To permanently disable the firewall on your CentOS 7 system, follow the steps below:

# First, stop the FirewallD service with:
sudo systemctl stop firewalld

# Disable the FirewallD service to start automatically on system boot:
sudo systemctl disable firewalld

# The output from the command above will look something like this:

    # Removed symlink /etc/systemd/system/multi-user.target.wants/firewalld.service.
    # Removed symlink /etc/systemd/system/dbus-org.fedoraproject.FirewallD1.service.Copy

# Mask the FirewallD service which will prevent the firewall from being started by other services:

sudo systemctl mask --now firewalld

# As you can see from the output the mask command simply creates a symlink from the firewalld service to /dev/null:

# Created symlink from /etc/systemd/system/firewalld.service to /dev/null.

