#!/usr/bin/env bash
# download paket steam.deb di situs resminya
cd /tmp
sudo wget -c http://repo.steampowered.com/steam/archive/precise/steam_latest.deb
# lalu install manual dengan 
sudo dpkg -i steam_latest.deb
sudo apt-get update --fix-missing && sudo apt-get dist-upgrade -y
find $HOME/.steam/root/ubuntu12_32/steam-runtime/*/usr/lib/ -name "libstdc++.so.6" -exec mv "{}" "{}.bak" \; -print
steam
