#!/bin/bash

interface="wlan0"

echo "[*] Current MAC Address:"
macchanger -s $interface

echo "[*] Bringing interface down..."
sudo ifconfig $interface down

echo "[*] Changing MAC Address..."
sudo macchanger -r $interface

echo "[*] Bringing interface up..."
sudo ifconfig $interface up

echo "[*] New MAC Address:"
macchanger -s $interface

echo "[*] Alternative method using ip command"
sudo ip link set $interface down
sudo macchanger -r $interface
sudo ip link set $interface up
