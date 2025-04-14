#!/bin/bash
# GUID-DIASHOW: ASCII-Intro
echo -e "\n🎬 Starte GUID-Diashow...\n"
for i in {1..5}; do
    bash guiddiashow/guid${i}.sh
done

echo -e "\n✅ GUID-Diashow abgeschlossen. Starte Installation..."
sleep 2


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
