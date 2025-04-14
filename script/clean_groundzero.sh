#!/bin/bash

echo -e "\e[1;34m🧹 Starte Aufräumen...\e[0m"

# 1. Nicht mehr benötigte Abhängigkeiten entfernen
echo "📦 Entferne verwaiste Pakete..."
sudo pacman -Rns $(pacman -Qtdq) --noconfirm 2>/dev/null || echo "Keine verwaisten Pakete."

# 2. Cache löschen
echo "🗑️  Pacman Cache bereinigen..."
sudo pacman -Scc --noconfirm

# 3. temporäre Clones löschen
echo "🧼 Lösche temporäre Klone..."
cd ~
rm -rf ~/archlinux-hyprland-groundzero
rm -rf ~/yay  # Falls yay manuell geklont wurde

# 4. Systemdienste reloaden
echo "🔁 Daemons neustarten (gamemode usw)..."
systemctl --user daemon-reexec
systemctl daemon-reexec

echo -e "\e[1;32m✅ Clean-Up abgeschlossen!\e[0m"

