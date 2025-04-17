# ─────────────────────────────────────────────────────────
# SCRCPY WLAN SPIEGELUNGSMODUL – für Android over Wi-Fi
# Ort: labfactory.sh oder modular eingebunden
# ─────────────────────────────────────────────────────────

echo "📱 [SCRCPY] Installation & WLAN-Auto-Modus wird eingerichtet ..."

# 1. SCRCPY installieren (offizielles Repo)
sudo pacman -S scrcpy android-tools --noconfirm

# 2. Bash-Script für WLAN-Verbindung & Spiegelung
mkdir -p ~/.local/bin

cat <<'EOF' > ~/.local/bin/scrcpy-wifi.sh
#!/bin/bash
IP=$(adb shell ip route | awk '{print $9}')
adb tcpip 5555
adb connect "$IP:5555"
scrcpy
EOF

chmod +x ~/.local/bin/scrcpy-wifi.sh

# 3. Desktop-Starter erzeugen
mkdir -p ~/.local/share/applications

cat <<EOF > ~/.local/share/applications/scrcpy-wifi.desktop
[Desktop Entry]
Name=Android Spiegelung (WLAN)
Exec=/home/$USER/.local/bin/scrcpy-wifi.sh
Icon=phone
Type=Application
Categories=Utility;
StartupNotify=false
Terminal=false
EOF

# 4. Shortcut auffindbar machen
update-desktop-database ~/.local/share/applications &>/dev/null

echo "✅ [SCRCPY] WLAN-Spiegelung jetzt über App-Launcher verfügbar."

