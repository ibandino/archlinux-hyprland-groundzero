#!/bin/bash

set -e  # Stoppt das Skript bei Fehlern

echo "📦 System wird aktualisiert..."
sudo pacman -Syu --noconfirm

echo "📥 Installiere Gaming-Komponenten (pacman + yay)..."

# Basis-Tools
sudo pacman -S --noconfirm steam wine winetricks mesa vulkan-icd-loader vulkan-tools gamescope gamemode lutris

# PortProton (yay erforderlich)
if ! command -v yay &> /dev/null; then
    echo "📦 Yay wird installiert..."
    cd ~
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
fi

echo "📥 Installiere PortProton über AUR..."
yay -S --noconfirm portproton

echo "✅ Fertig! Alle Gaming-Tools sind installiert."
