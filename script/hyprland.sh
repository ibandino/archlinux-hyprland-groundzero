#!/bin/bash
echo "🔧 Installiere Hyprland mit JaKooLit..."

# Pakete installieren (anpassen je nach deinem Repo oder AUR-Manager)
sudo pacman -S --noconfirm hyprland hyprpaper xdg-desktop-portal-hyprland

# JaKooLit Git Klonen (angenommen du hast dein eigenes Config Repo)
git clone https://github.com/ibandino/Arch-Hyprland-GroundZero ~/.config/hypr

echo "✅ Hyprland installiert!"

