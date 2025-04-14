#!/bin/bash

set -e  # Stoppe bei Fehlern

echo "📦 System wird aktualisiert..."
sudo pacman -Syu --noconfirm

# Yay prüfen & ggf. installieren
if ! command -v yay &> /dev/null; then
    echo "📥 Yay wird installiert..."
    cd ~
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
fi

echo "💻 Entwickler-Werkzeuge werden installiert..."
sudo pacman -S --noconfirm code python nano kwrite kate
yay -S --noconfirm pycharm-community-edition

echo "🌐 Browser + Kommunikation..."
sudo pacman -S --noconfirm firefox telegram-desktop
yay -S --noconfirm twitch-cli

echo "🎨 Multimedia & Recording Tools..."
sudo pacman -S --noconfirm obs-studio gimp

echo "⚙️ System-Tools..."
sudo pacman -S --noconfirm cpupower

echo "✅ Alle Tools wurden erfolgreich installiert!"

