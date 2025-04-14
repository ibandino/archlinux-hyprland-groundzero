#!/bin/bash

set -e  # Bricht bei Fehlern ab

echo "📦 Installiere grundlegende Tools (git, base-devel)..."
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm git base-devel

# Prüfen ob yay existiert, sonst installieren
if ! command -v yay &> /dev/null; then
    echo "📥 Yay wird installiert..."
    cd ~
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
fi

echo "🌐 Installiere Hyprland und benötigte Tools über pacman/yay..."
sudo pacman -S --noconfirm hyprland hyprpaper xdg-desktop-portal-hyprland
yay -S --noconfirm pyprland-git

echo "🎨 Lade JaKooLit Hyprland Configs..."
mkdir -p ~/.config
git clone https://github.com/ibandino/Arch-Hyprland-GroundZero ~/.config/hypr

echo "✅ Hyprland + Pyprland + JaKooLit wurden installiert!"
