# /home/thierry/projects/dapr-sdk/go-install/go-install-linux.ps1

# by: Thierry Brunet -- January 2022

$ThisGo = "go1.17.6.linux-amd64.tar.gz"
cd /home/thierry/projects
wget https://go.dev/dl/$ThisGo
sudo tar -C /usr/local/ -xzf $ThisGo
cd /usr/local/
dir

Get-Content $HOME/.profile
Get-Content /root/.profile
Get-Content /home/thierry/.profile

$env:PATH # echo $PATH

# export PATH=$PATH:/usr/local/go/bin
$env:PATH = "/opt/microsoft/powershell/7:/root/.vscode-server/bin/899d46d82c4c95423fb7e10e68eba52050e30ba3/bin:/root/.local/bin:/root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/local/go/bin"

# Verify
go version    # --> go version go1.17.6 linux/amd64



# Additional

go get -v golang.org/x/tools/gopls

Tools environment: GOPATH=/root/go

Installing 10 tools at /root/go/bin in module mode.
  gopkgs
  go-outline
  gotests
  gomodifytags
  impl
  goplay
  dlv
  dlv-dap
  staticcheck
  gopls