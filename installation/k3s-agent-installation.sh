# The following options can be found at the link below with more details:
#   https://rancher.com/docs/k3s/latest/en/installation/install-options/#options-for-installation-with-script 

echo -e "Setting environment variables for k3s agent installation";
servertoken="<PASTE TOKEN HERE>"
serveripaddress="<PASTE SERVER ADDRESS HERE>:6443"

export INSTALL_K3S_SKIP_DOWNLOAD=false
export INSTALL_K3S_SKIP_ENABLE=false
export INSTALL_K3S_SKIP_START=false
export INSTALL_K3S_VERSION="v1.22.15+k3s1"
export INSTALL_K3S_BIN_DIR=/usr/local/bin
export INSTALL_K3S_BIN_DIR_READ_ONLY=false
export INSTALL_K3S_SYSTEMD_DIR=/etc/systemd/system
export INSTALL_K3S_EXEC=agent
export K3S_TOKEN=$servertoken
export K3S_URL=$serveripaddress

# Keep these as the defaults
# export INSTALL_K3S_SYMLINK=
# export INSTALL_K3S_NAME=
# export INSTALL_K3S_TYPE=
# export INSTALL_K3S_SKIP_SELINUX_RPM=
# export INSTALL_K3S_CHANNEL_URL=
# export INSTALL_K3S_CHANNEL=

echo -e "Beginning to install k3s using the script installation method ";
instdoc="https://rancher.com/docs/k3s/latest/en/installation/install-options/#options-for-installation-with-script";
echo -e "For more information on this installation method, see the following:"; 
echo -e "$instdoc";

curl -sfL https://get.k3s.io | sh -
