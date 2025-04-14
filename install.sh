#!/bin/bash

clear
echo -e "\e[1;36m*** JaKooLit Arch Linux Setup ***\e[0m"

ask_install() {
    echo
    read -p ">> Möchtest du $1 installieren? (y/n): " choice
    if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
        bash scripts/$2
    else
        echo "Übersprungen: $1"
    fi
}

ask_install "Hyprland + JaKooLit Config" "hyprland.sh"
ask_install "VLC Media Player" "vlc.sh"
ask_install "Firefox Browser" "firefox.sh"
ask_install "Steam (Native Version)" "steam.sh"
ask_install "Telegram Desktop" "telegram.sh"

echo
echo -e "\e[1;32m✅ Installation abgeschlossen!\e[0m"

