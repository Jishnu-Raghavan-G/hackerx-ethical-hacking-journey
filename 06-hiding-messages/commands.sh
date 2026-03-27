#!/bin/bash

echo "[*] Embedding secret file into image"
steghide embed -cf cover.jpg -ef secret.txt

echo "[*] Extracting hidden data"
steghide extract -sf cover.jpg

echo "[*] Checking file type"
file cover.jpg
