#!/bin/bash

# GUID-DIASHOW START (nacheinander anzeigen mit 8 Sek Pause)
for i in {1..5}; do
    if [[ -f "./guiddiashow/guid$i" ]]; then
        clear
        chmod +x "./guiddiashow/guid$i"
        bash "./guiddiashow/guid$i"
        sleep 8
    fi
done

# Danach Hauptinstallation (Script-Block)
echo -e "\e[1;32m[+] Starte Groundzero Setup...\e[0m"
sleep 1

# 1. Tools
bash ./script/groundzerotools.sh

# 2. Hyprland
bash ./script/hyprland.sh

# 3. Gamescript
bash ./script/gamescript.sh

# 4. Labfactory (noch leer)
bash ./script/labfactory.sh
