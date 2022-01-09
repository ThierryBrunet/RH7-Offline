# /home/thierry/projects/dapr-sdk/python-install/python-install-linux.ps1

# by: Thierry Brunet -- January 2022

# -- Step1 -- Get Python code
$Version = "3.10.1"
$thisPython = "Python-$Version.tar.xz"

cd /home/thierry/projects
wget https://www.python.org/ftp/python/$Version/$thisPython

# -- Step 2 -- unZip source code into temporary folder
sudo tar -C /home/thierry/projects -xf $thisPython
cd /home/thierry/projects
dir

# -- Step 3 -- Compile Python code
cd "Python-$Version"
Get-Content configure
./configure  # run configure bash script
make

# -- Step 4 -- Install Python runtime
make install

# This installs Python at standard location /usr/local/bin and
# its libraries at /usr/local/lib/pythonXX where XX is the version of Python.


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


