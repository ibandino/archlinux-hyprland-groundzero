#!/bin/bash

echo -e "\e[1;36m[+] Starte Groundzeroprozess...\e[0m"
sleep 1

# 1. Google Drive Terminalhilfe holen
DEST="$HOME/terminalhilfe"
ZIP="$HOME/terminalhilfe.zip"
URL="https://drive.google.com/uc?export=download&id=1veSyqkP4TTo_QhuLqbCBym_xMFL6zXwg"

echo -e "\e[1;34m[+] Lade Terminalhilfe von Google Drive...\e[0m"
mkdir -p "$DEST"
rm -f "$ZIP"
wget -O "$ZIP" "$URL"
unzip -o "$ZIP" -d "$DEST"
rm -f "$ZIP"

echo -e "\e[1;32m✅ Groundzero-Update abgeschlossen\e[0m"
