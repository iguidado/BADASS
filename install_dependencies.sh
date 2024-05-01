# # Install docker
sudo apt-get update && sudo apt upgrade
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
 
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
 
# Install GNS3
sudo apt update
sudo apt install python3 python3-pip pipx python3-pyqt5 python3-pyqt5.qtwebsockets python3-pyqt5.qtsvg qemu-kvm qemu-utils libvirt-clients libvirt-daemon-system virtinst software-properties-common ca-certificates curl gnupg2 -y
sudo apt install busybox-static -y
pipx install gns3-server
pipx install gns3-gui
pipx inject gns3-gui gns3-server PyQt5
pipx ensurepath

# Install Ubridge
sudo apt install git build-essential pcaputils  libpcap-dev
git clone https://github.com/GNS3/ubridge.git
cd ubridge
make
sudo make install
cd ..
rm -rf ubridge

# Install dynamips
sudo apt install libelf-dev libpcap-dev cmake -y
git clone https://github.com/GNS3/dynamips.git
cd dynamips
mkdir build
cd build
cmake ..
sudo make install

# install wireshark
sudo apt install wireshark -y


# Enable docker support for GNS3
for i in ubridge docker wireshark; do
 sudo usermod -aG $i $USER
done

rm -rf ./dynamips
