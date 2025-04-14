#!/bin/bash

echo "Willkommen zum Arch Linux Hyprland Groundzero Setup"

read -p "Möchtest du Hyprland installieren? (y/n): " install_hyprland
if [[ "$install_hyprland" == "y" ]]; then
    bash script/hyprland.sh
fi

read -p "Möchtest du VLC installieren? (y/n): " install_vlc
if [[ "$install_vlc" == "y" ]]; then
    bash script/vlc.sh
fi

# Weitere Abfragen für andere Komponenten


