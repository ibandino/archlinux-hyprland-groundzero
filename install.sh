#!/bin/bash

# Danach Hauptinstallation (Script-Block)
echo -e "\e[1;32m[+] Starte Groundzero Setup...\e[0m"
sleep 1

# 1. Tools
bash ./script/groundzerotools.sh

# 2. Gamescript
bash ./script/gamescript.sh

# 3. Hyprland JaKooLit + Updates
bash ./script/hyprland.sh

# 4. Labfactory (noch leer)
bash ./script/labfactory.sh

# 5. CleanUp Sektion 
bash ./script/clean_groundzero.sh


echo -e "\e[1;32m✅ Groundzero automatische Updates Finish\e[0m"
