# /home/thierry/projects/dapr-sdk/python-install/python-install-windows.ps1

# by: Thierry Brunet -- January 2022

# --> run script in Windows

# Option 1 -- Install on Windows 2012 on \DEVELOPER domain
# --------------------------------------------------------

# -- Step1 -- Get Python code
$Version = "3.10.1"
$thisPython = "python-$Version-embed-amd64.zip"
$source = "https://www.python.org/ftp/python/$Version/$thisPython"
$destination = $source2 = "~\Downloads\$thisPython"
$destination2 = "c:\Program Files"
$AtoProxy = ""
$AtoProxyCreds = ""

Invoke-WebRequest -Uri $source -OutFile $destination  -AllowUnencryptedAuthentication -Proxy $AtoProxy -ProxyCredential $AtoProxyCreds

# -- Step 2 -- unZip source code into temporary folder


dir $$destination2
Expand-Archive -Path $source2 -Destination "$destination2/python"



# -- Step 3 -- Compile Python code
cd  "$destination2/python"
dir

?????

# set path !!!!!


# Verify Python
python --version  # ????
whereis python3.10 # python3.10: /usr/local/bin/python3.10 /usr/local/lib/python3.10
python3.10 --version # Python 3.10.1

ln -s /usr/local/bin/python3.10 /usr/local/bin/python # Create symlink
python --version  # Python 3.10.1

# Verify PIP
pip --version # ???
pip3 --version  # pip 21.2.4 from /usr/local/lib/python3.10/site-packages/pip (python 3.10)
whereis pip3 # /usr/local/bin/pip3
ln -s /usr/local/bin/pip3 /usr/local/bin/pip # Create symlink
pip --version # pip 21.2.4 from /usr/local/lib/python3.10/site-packages/pip (python 3.10)



# Option 2 -- Install on Windows 2016 on \DEVTEST domain
# --------------------------------------------------------

# Get go zip file from jumpserver, and unzip as above




