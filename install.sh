#!/bin/bash

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

# 5. CleanUp Sektion 
bash ./script/clean_groundzero.sh

# === Groundzero-Timer einrichten ===
echo -e "\e[1;36m[+] Richte Groundzero-Timer für 7-Tage-Update ein...\e[0m"

mkdir -p ~/.config/systemd/user

cp ./script/systemd/groundzero-update.service ~/.config/systemd/user/
cp ./script/systemd/groundzero-update.timer ~/.config/systemd/user/

systemctl --user daemon-reexec
systemctl --user daemon-reload
systemctl --user enable --now groundzero-update.timer

echo -e "\e[1;32m✅ Groundzero-Timer ist aktiv – automatische Updates alle 7 Tage!\e[0m"
