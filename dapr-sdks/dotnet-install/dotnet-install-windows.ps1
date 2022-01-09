# /home/thierry/projects/dotnet-install-windows.ps1

# by: Thierry Brunet -- January 2022

# --> run script in Windows

# Option 1 -- Install on Windows 2012 on \DEVELOPER domain
# --------------------------------------------------------

$Version = "6.0.101"
$thisDotNetSdk = "dotnet-sdk-$Version-win-x64.zip"
$source = "https://download.visualstudio.microsoft.com/download/pr/8e55ce37-9740-41b7-a758-f731043060da/4b8bfd4aad9d322bf501ca9e473e35c5/$thisDotNetSdk"
$destination = $source2 = "~\Downloads\$thisDotNetSdk"
$destination2 = "c:\Program Files"
$AtoProxy = ""
$AtoProxyCreds = ""
Invoke-WebRequest -Uri $source -OutFile $destination  -AllowUnencryptedAuthentication -Proxy $AtoProxy -ProxyCredential $AtoProxyCreds

dir $destination2
Expand-Archive -Path $source2 -Destination "$destination2/dotnet"

# set path !!!!!


# Option 2 -- Install on Windows 2016 on \DEVTEST domain
# --------------------------------------------------------

# Get dotnet sdk zip file from jumpserver, and unzip as above


