# /home/thierry/projects/go-install-windows.ps1

# by: Thierry Brunet -- January 2022

# --> run script in Windows

# Option 1 -- Install on Windows 2012 on \DEVELOPER domain
# --------------------------------------------------------

$Version = "1.17.6"
$thisGo = "go$Version.windows-amd64.zip"
$source = "https://go.dev/dl/$thisGo"
$destination = $source2 = "~\Downloads\$thisGo"
$destination2 = "c:\Program Files"
$AtoProxy = ""
$AtoProxyCreds = ""
Invoke-WebRequest -Uri $source -OutFile $destination  -AllowUnencryptedAuthentication -Proxy $AtoProxy -ProxyCredential $AtoProxyCreds

dir $$destination2
Expand-Archive -Path $source2 -Destination "$destination2/go"


# set path !!!!!


# Option 2 -- Install on Windows 2016 on \DEVTEST domain
# --------------------------------------------------------

# Get go zip file from jumpserver, and unzip as above


