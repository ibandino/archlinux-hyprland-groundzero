#!/bin/bash

# ───────────────────────────────────────────────
# 📛 RAM MANAGER SETUP – GroundZero Module
# 📦 Modul: earlyoom – frühes RAM-Management
# 🔁 Ziel: Verhindert Tot-Freezes bei RAM/SWAP-Überlast
# ⏱️ Autor: GroundZero Projekt
# ───────────────────────────────────────────────

set -e  # Bricht bei Fehlern ab

echo -e "\n🚀 Starte Installation des RAM-Managers (earlyoom)...\n"

# Prüfen ob earlyoom bereits installiert ist
if ! command -v earlyoom &> /dev/null; then
    echo "📦 Installiere earlyoom..."
    sudo pacman -S --noconfirm earlyoom
else
    echo "✅ earlyoom ist bereits installiert."
fi

# Aktivieren des earlyoom Dienstes
echo -e "\n🔧 Aktiviere earlyoom systemd-Dienst..."
sudo systemctl enable earlyoom.service
sudo systemctl start earlyoom.service

# Status anzeigen
echo -e "\n📈 Status von earlyoom:"
systemctl status earlyoom.service --no-pager

# Konfigurationshinweis
echo -e "\n🧠 Hinweis:"
echo "Die Standard-Konfiguration von earlyoom ist bereits sehr sicher."
echo "Wer will, kann unter /etc/default/earlyoom feinjustieren:"
echo "  → Beispiel: EARLYOOM_ARGS=\"-m 10 -s 20\" (mehr Aggressivität bei RAM/SWAP-Mangel)"

# Fertigmeldung
echo -e "\n✅ RAM-Manager erfolgreich eingerichtet!\n"

