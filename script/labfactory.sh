# ─────────────────────────────────────────────────────────
# 📱 SCRCPY WLAN SPIEGELUNG – Android over Wi-Fi (nahtlos)
# Ort: labfactory.sh – ready-to-plug-in für GroundZero
# ─────────────────────────────────────────────────────────

echo "📲 [SCRCPY] Installation, UDEV, WLAN-Modus & Launcher Setup ..."

# 1. Abhängigkeiten installieren
sudo pacman -S --noconfirm scrcpy android-tools android-udev xdg-utils

# 2. Lokale Skriptstruktur vorbereiten
mkdir -p ~/.local/bin ~/.local/share/applications

# 3. WLAN-Script anlegen (automatische IP-Erkennung + fallback)
cat <<'EOF' > ~/.local/bin/scrcpy-wifi.sh
#!/bin/bash
IP=$(adb shell ip route | awk '{print $9}')
if [[ -z "$IP" ]]; then
  notify-send "SCRCPY" "⚠️ Keine WLAN-IP erkannt. USB-Verbindung nötig?" --icon=dialog-warning
  exit 1
fi
adb tcpip 5555
sleep 1
adb connect "$IP:5555"
sleep 1
scrcpy
EOF

chmod +x ~/.local/bin/scrcpy-wifi.sh

# 4. .desktop-Starter erzeugen
cat <<EOF > ~/.local/share/applications/scrcpy-wifi.desktop
[Desktop Entry]
Name=Android Spiegelung (WLAN)
Comment=Spiegelt dein Android-Gerät drahtlos über ADB
Exec=/home/$USER/.local/bin/scrcpy-wifi.sh
Icon=phone
Type=Application
Categories=Utility;
StartupNotify=false
Terminal=false
EOF

# 5. App-Verknüpfung registrieren
update-desktop-database ~/.local/share/applications &>/dev/null

# 6. Hinweis für den User
echo "✅ [SCRCPY] WLAN-Spiegelung bereit! Starte per App-Launcher oder via scrcpy-wifi.sh"
echo "👉 Bitte aktiviere USB-Debugging auf deinem Android-Gerät"
echo "👉 Verbinde es einmal per USB – danach funktioniert WLAN automatisch"

# 7. (Optionaler Test direkt nach Setup, nur wenn gewünscht)
# echo "🔍 Starte Erkennung ..."
# read -p "Drücke [Enter], um das Gerät jetzt zu spiegeln (USB oder WLAN) ..." && scrcpy
