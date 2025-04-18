#!/bin/bash

# ───────────────────────────────────────────────
# 🧪 GroundZero – labfactory.sh
# 📦 Modul: Interaktiver Update-Dialog
# ───────────────────────────────────────────────

echo -e "\n📢 \e[1;36mSind Sie bereit für Erneuerungen?\e[0m (j|n):"
read -rp "➤ Auswahl: " user_choice

case "$user_choice" in
    [jJ])
        echo -e "\n✅ Erneuerungsprozess wird gestartet..."
        # Hier kannst du später dein Update-Modul aufrufen:
        # ./update-modul.sh oder Funktion einbinden
        ;;
    [nN])
        echo -e "\n🚫 Kein Problem! Sie können das später manuell starten."
        exit 0
        ;;
    *)
        echo -e "\n⚠️ Ungültige Eingabe. Bitte 'j' oder 'n' eingeben."
        exit 1
        ;;
esac
