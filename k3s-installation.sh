echo -e "Setting environment variables for k3s installation";
echo -e "Please specifiy if this is a 'server' or 'agent' installation: ";
read -r insttype
echo -e "You have chosen a(n) $insttype installation; proceeding with the setup";

# The following options can be found at the link below with more details:
#   https://rancher.com/docs/k3s/latest/en/installation/install-options/#options-for-installation-with-script 

export INSTALL_K3S_SKIP_DOWNLOAD=false
# export INSTALL_K3S_SYMLINK=
export INSTALL_K3S_SKIP_ENABLE=false
export INSTALL_K3S_SKIP_START=false
export INSTALL_K3S_VERSION="v1.22.15+k3s1"
export INSTALL_K3S_BIN_DIR=/usr/local/bin
export INSTALL_K3S_BIN_DIR_READ_ONLY=false
export INSTALL_K3S_SYSTEMD_DIR=/etc/systemd/system
export INSTALL_K3S_EXEC=$insttype
# export INSTALL_K3S_NAME=
# export INSTALL_K3S_TYPE=
# export INSTALL_K3S_SKIP_SELINUX_RPM=
# export INSTALL_K3S_CHANNEL_URL=
#export INSTALL_K3S_CHANNEL=

echo -e "Beginning to install k3s using the script installation method ";
instlink="https://rancher.com/docs/k3s/latest/en/installation/install-options/#options-for-installation-with-script";
echo -e "For more information on this installation method, see the following:"; 
echo -e "$instlink";