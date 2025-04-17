# 1. Abhängigkeiten installieren
sudo pacman -S git base-devel wget python-pyxdg lzip sudo --noconfirm

# 2. AUR-Helfer yay (falls noch nicht installiert)
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ~
rm -rf yay

# 3. Waydroid über yay installieren
yay -S waydroid --noconfirm

# 4. Waydroid initialisieren (Ladezeit beachten!)
sudo waydroid init -s GAPPS

# Falls GAPPS nicht erwünscht → stattdessen: -s VANILLA

echo 5. Download-Status checken (optional)
echo meist via: https://sourceforge.net/projects/waydroid/files/images/system/lineage/...

# 6. Nach Init, Waydroid starten und aktivieren:
sudo systemctl enable waydroid-container
sudo systemctl start waydroid-container

# 7. Test ob alles läuft:
waydroid status

# 8. (Optional) GUI starten:
waydroid session start

# 9. (Optional) Android-Umgebung als App anzeigen (kann .desktop erzeugt werden)
# Achtung: ggf. manuell eintragen falls unter Hyprland nicht automatisch erscheint:
mkdir -p ~/.local/share/applications/
cp /usr/share/applications/waydroid.desktop ~/.local/share/applications/
