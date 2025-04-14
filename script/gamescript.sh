#!/bin/bash
set -e  # Stoppt das Skript bei Fehlern

echo "📦 System wird aktualisiert..."
sudo pacman -Syu --noconfirm
echo "⏳ Warte 3 Sekunden..."
sleep 3

echo "📥 Installiere Gaming-Komponenten (pacman + yay)..."

# Basis-Tools für Gaming (mit 32-bit libs)
sudo pacman -S --noconfirm \
  steam wine winetricks lutris \
  mesa mesa-utils lib32-mesa \
  vulkan-icd-loader vulkan-tools lib32-vulkan-icd-loader \
  gamescope gamemode mangohud lib32-mangohud \
  vkbasalt lib32-vkbasalt

echo "⏳ Warte 3 Sekunden..."
sleep 3

# Yay prüfen & ggf. installieren
if ! command -v yay &> /dev/null; then
    echo "📦 Yay wird installiert..."
    cd ~
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
    echo "⏳ Warte 3 Sekunden..."
    sleep 3
fi

echo "📥 Installiere PortProton über AUR..."
yay -S --noconfirm portproton
echo "⏳ Warte 3 Sekunden..."
sleep 3

echo "✅ Fertig! Alle Gaming-Tools sind installiert."
