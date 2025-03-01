#!/bin/sh

echo "Activating NETLINK monitor"
sudo ip link add  nlmon0 type nlmon
sudo ip link set dev nlmon0 up
echo "Activating NetworkManager"
sudo systemctl start NetworkManager.service
sudo systemctl start wpa_supplicant.service
