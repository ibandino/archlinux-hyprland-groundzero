# 🧱 ArchLinux Hyprland Groundzero

Ein ultraleichtes und modulares Hyprland-Setup für ArchLinux.  
Performance steht an erster Stelle – ideal für Gamer, Power-User und Terminalfreunde.  
Automatisch aktualisierbar, mit Gaming-Optimierungen und einer integrierten Terminalhilfe.

---

## 👣 Grundinstallation ArchLinux Iso , Minimal Install 
```
https://archlinux.org/download/
```
Tipp : Bei dem Kernel auswahl kannst du den standart linux Kernel
der angekreutzt ist mit ctr + c (oder x) reseten , wähle danach den Linux-Zen aus um keine zwei kernel zu installieren(optional)


## ⚡ Schnellstart (2 Wege)

### 🌀 Via `curl`:

```bash
bash <(curl -s https://raw.githubusercontent.com/ibandino/archlinux-hyprland-groundzero/main/install.sh)
```

### 💻 Via `git clone` wenn du vorher - sudo pacman -S git - machst dann :

```bash
git clone https://github.com/ibandino/archlinux-hyprland-groundzero.git
cd archlinux-hyprland-groundzero
chmod +x install.sh
./install.sh
```
Tipp: Installier nach dem archinstall im tty login danach erst - sudo pacman -S git - und dann geh den github weg ,
das script ist modular aufgebaut und arbeitet sich bis zum hyrpland desktop punktuell durch ...
Die wlan broadcam treiber sind nicht enthalten , da es zuviele verschiedene modelle gibt (dies manual selbst installieren),
lan kabel geht aber immer .

---

## 🔧 Komponenten

Die `install.sh` führt folgende Schritte aus:

```bash
# 1. Tools und Basics
./script/groundzerotools.sh

# 2.Original Hyprland JaKooLit Setup (Wayland, EWW, Themes etc.)
./script/hyprland.sh

# 3. Gaming Tuning + Extras
./script/gamescript.sh

# 4. Labfactory (Platzhalter)
./script/labfactory.sh

```

---

## 📁 Terminalhilfe aus Google Drive

Ein öffentlicher Google Drive Ordner wird regelmäßig synchronisiert:

```bash
~/terminalhilfe/
```

Darin findest du:

✅ Bash-Befehle  
✅ Download-Snippets  
✅ Wine / Proton / Systemtweaks  
✅ Textdateien mit Terminalhilfen

Wird **bei jedem Groundzero-Update automatisch aktualisiert**.

---

## 📂 Repo-Struktur

```bash
.
├── install.sh
└── script/
    ├── groundzerotools.sh
    ├── hyprland.sh <-- beim walus install hat jakoolit ein grafik bug , ein install balken verdeckt das sudo passwort(JaKooLit Mini bugg)
    ├── gamescript.sh
    ├── labfactory.sh
    ├── groundzero.sh
(betaphase)
    └── systemd/
        ├── groundzero-update.service
        └── groundzero-update.timer
```

---

## 🧩 Modular und erweiterbar

Du kannst jede Komponente einzeln anpassen, ersetzen oder erweitern.  
Die Architektur bleibt trotzdem sauber und wartbar.

---

## 📢 Feedback willkommen!

Fragen, Bugs oder Erweiterungsideen?  
→ Issue aufmachen oder direkt forken & verbessern.

> 🫡 Willkommen in der Groundzero-Zone.
>
> <img src="https://github.com/user-attachments/assets/4f9540f5-c56c-42e6-879a-d3145e49210b" alt="Logo" width="200"/>



##############################################################################################

LabFactory.sh

### 🟢 Waydroid (Android-Unterstützung unter Arch + Hyprland)

Mit Waydroid kannst du eine vollständige Android-Umgebung direkt auf deinem Linux-System ausführen. Perfekt als Add-On für mobile App-Tests, zusätzliche Features oder Lightweight-Android-Nutzung auf dem Desktop.

#### 🔹 Installation von Grund auf inklusive anleitung
# 1. Abhängigkeiten
sudo pacman -S git base-devel wget python-pyxdg lzip sudo --noconfirm

# 2. yay installieren (falls noch nicht vorhanden)
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si --noconfirm && cd ~ && rm -rf yay

# 3. Waydroid aus dem AUR installieren
yay -S waydroid --noconfirm

# 4. Waydroid initialisieren (VANILLA oder GAPPS möglich)
sudo waydroid init -s VANILLA
# oder mit Google-Diensten:
# sudo waydroid init -s GAPPS

# 5. Waydroid-Container aktivieren & starten
sudo systemctl enable waydroid-container
sudo systemctl start waydroid-container

# 6. GUI starten
waydroid session start

# 7. Status & Log prüfen (Fehlersuche)
waydroid status
waydroid log

