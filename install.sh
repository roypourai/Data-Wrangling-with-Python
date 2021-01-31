# Script to Install
# Linux System Tools and
# Basic Python Components
#
# GENERAL LINUX
apt-get update  # updates the package index cache
apt-get upgrade -y  # updates packages
# installs system tools
apt-get install -y bzip2 gcc git  # system tools
apt-get install -y htop screen vim wget  # system tools
apt-get upgrade -y bash # upgrades bash if necessary
apt-get clean # cleans up the package index cache
# INSTALL MINICONDA
# downloads Miniconda
wget  https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh 
bash Miniconda3-latest-Linux-x86_64.sh -b # installs it
rm -rf Miniconda3-latest-Linux-x86_64.sh
# removes the installer
export PATH="/root/miniconda3/bin:$PATH" # prepends the new path
# prepends the new path in the shell configuration
cat >> ~/.profile <<EOF
export PATH="/root/miniconda3/bin:$PATH"
EOF
# INSTALL PYTHON LIBRARIES
conda install -y pandas # installs pandas
conda install -y jupyter   # interactive data analytics in the browser
conda install -y jupyterlab   # Jupyter Lab environment
conda install -y pyyaml   # package to manage yaml files # 
pip install --upgrade pip   # upgrading the package manager jupyter lab &
