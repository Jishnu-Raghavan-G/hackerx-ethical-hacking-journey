#!/bin/bash

target="example.com"

echo "[*] WHOIS Lookup"
whois $target

echo "[*] DNS Lookup"
nslookup $target

echo "[*] Nmap Scan"
nmap -A -T4 $target

echo "[*] Subdomain Enumeration"
theHarvester -d $target -b google

echo "[*] Ping Test"
ping -c 4 $target
