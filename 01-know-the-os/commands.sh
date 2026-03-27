#!/bin/bash

echo "===== SYSTEM INFORMATION ====="
whoami
id
uname -a

echo "===== DIRECTORY NAVIGATION ====="
pwd
ls -lah
cd /tmp
pwd

echo "===== FILE OPERATIONS ====="
touch testfile.txt
echo "Hello Cybersecurity" > testfile.txt
cat testfile.txt
cp testfile.txt copy.txt
mv copy.txt moved.txt
rm moved.txt

echo "===== PERMISSIONS ====="
chmod 755 testfile.txt
ls -l testfile.txt

echo "===== PROCESS MANAGEMENT ====="
ps aux | head
top -b -n 1 | head -20

echo "===== NETWORK INFO ====="
ifconfig
ip a
