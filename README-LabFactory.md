---
## 📦 Installierte Pakete
### 🔧 System- und AUR-Werkzeuge
```bash
sudo pacman -S git base-devel wget python-pyxdg lzip sudo --noconfirm
```
```bash
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ~
rm -rf yay
```
### 🐳 Container-Tools (Podman & Distrobox)
```bash
sudo pacman -S podman distrobox \
  fuse-overlayfs slirp4netns \
  podman-compose podman-docker --noconfirm
```
### 📱 Waydroid (Android-Container)
```bash
yay -S waydroid --noconfirm
```
## ⚙️ Konfigurationsschritte
### 🧱 Waydroid initialisieren (mit oder ohne GApps)
```bash
sudo waydroid init -s GAPPS
# oder für eine saubere Version ohne Google-Dienste:
# sudo waydroid init -s VANILLA
```
### 🛠️ Systemdienst aktivieren
```bash
sudo systemctl enable waydroid-container
sudo systemctl start waydroid-container
```
### ✅ Status prüfen
```bash
waydroid status
```
### 🖥️ Android-GUI starten
```bash
waydroid session start
# oder für den Vollbildmodus:
# waydroid show-full-ui
```
## 🧩 Desktop-Integration (Hyprland-kompatibel)
Erstelle eine Desktop-Verknüpfung für Waydroid:
```bash
mkdir -p ~/.local/share/applications/
cp /usr/share/applications/waydroid.desktop ~/.local/share/applications/
```
## 📁 Download-Quelle (manuell, falls erforderlich)
Falls der automatische Download fehlschlägt, kannst du das System-Image manuell herunterladen:
```bash
wget https://sourceforge.net/projects/waydroid/files/images/system/lineage/waydroid_x86_64/lineage-18.1-20250416-VANILLA-waydroid_x86_64-system.zip/download
```
## 🧠 Hinweise für dein Installationskript

- Stelle sicher, dass dein Kernel die `binder`- und `ashmem`-Module unterstützt (z. B. `liux-zen`). citeturn0sarch1
- Waydroid funktioniert nur mit Wayland-Compositors und ist nicht mit proprietären NVIDIA-Treibern kmpatibel. citeturn0sarch1
- Für eine vollständige Integration kannst du die `.desktop`-Datei in dein Skript einbinden, um Waydroid im Anwendungsmenü sichtbar u machen

