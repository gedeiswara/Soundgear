#!/bin/bash
wget -q -O- 'https://ceph.com/git/?p=ceph.git;a=blob_plain;f=keys/release.asc' | sudo apt-key add -
USERNAME="[ceph-deployer]"
sudo useradd -d /home/$USERNAME -m $USERNAME -p P@ssw0rdCeph
sudo touch /etc/sudoers.d/$USERNAME
sudo echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME
sudo apt update
sudo apt install -y ntp
sudo apt install -y ceph-deploy