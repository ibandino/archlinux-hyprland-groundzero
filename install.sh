#!/bin/bash

# Danach Hauptinstallation (Script-Block)
echo -e "\e[1;32m[+] Starte Groundzero Setup...\e[0m"
sleep 1

echo -e "\e[1;32m[+] initialisiere \e[0m"
sleep 1

echo -e "\e[1;32m[+] # 0.GroundZero - Gemeinsame folge packete \e[0m"
sleep 1
# 0.GroundZero - Gemeinsame folge packete
bash ./script/corepackages.sh

echo -e "\e[1;32m[+] # 1. Tools - grundaustattung \e[0m"
sleep 1
# 1. Tools
bash ./script/groundzerotools.sh


echo -e "\e[1;32m[+] # 2. Gamescript \e[0m"
sleep 1
# 2. Gamescript
bash ./script/gamescript.sh

echo -e "\e[1;32m[+] # 3. Hyprland JaKooLit Style + Updates + FullConfigs \e[0m"
sleep 1
# 3. Hyprland JaKooLit + Updates
bash ./script/hyprland.sh

echo -e "\e[1;32m[+] # 4. Labfactory Sektion\e[0m"
sleep 1
# 4. Labfactory Sektion
bash ./script/labfactory.sh

echo -e "\e[1;32m[+] # 5. CleanUp Sektion \e[0m"
sleep 1
# 5. CleanUp Sektion 
bash ./script/clean_groundzero.sh


echo -e "\e[1;32m✅ Groundzero automatische Updates Finish\e[0m"
