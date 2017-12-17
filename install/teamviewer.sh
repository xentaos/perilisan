#!/usr/bin/env bash
cd $HOME/Downloads
# Untuk 32 Bit
wget -c https://download.teamviewer.com/download/teamviewer_i386.deb
# Untuk 64 Bit
wget -c https://download.teamviewer.com/download/teamviewer_amd64.deb

# Mengistall Paket 32bit
sudo dpkg -i teamviewer_i386.deb -y

# Mengistall Paket 64bit
sudo dpkg -i teamviewer_amd64.deb -y

# Melakukan Update dan menginstall dependency dari teamviewer
sudo apt-get update && sudo apt-get install -f -y
