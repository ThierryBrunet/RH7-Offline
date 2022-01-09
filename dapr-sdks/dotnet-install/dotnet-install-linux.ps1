# /home/thierry/projects/dotnet-install-linux.ps1

# by: Thierry Brunet -- January 2022

# -- Step 1 -- Get and install dotnet 6
/home/thierry/projects/dotnet-install.sh  # run bash script

# -- Step 2 -- Set path
whereis dotnet  # dotnet: /usr/lib64/dotnet /usr/share/dotnet

dir /usr/lib64/dotnet
dir /usr/share/dotnet
dir /root/.dotnet/tools

$env:PATH # echo $PATH

# export PATH=$PATH:/usr/share/dotnet
$env:PATH = "/opt/microsoft/powershell/7:/root/.vscode-server/bin/899d46d82c4c95423fb7e10e68eba52050e30ba3/bin:/root/.local/bin:/root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/local/go/bin:/usr/share/dotnet"

# Verify
dotnet --version # 6.0.101

