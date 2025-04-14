# 🧱 ArchLinux Hyprland Groundzero

Ein ultraleichtes und modulares Hyprland-Setup für ArchLinux.  
Performance steht an erster Stelle – ideal für Gamer, Power-User und Terminalfreunde.  
Automatisch aktualisierbar, mit Gaming-Optimierungen und einer integrierten Terminalhilfe.

---

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

---

## 🔧 Komponenten

Die `install.sh` führt folgende Schritte aus:

```bash
# 1. Tools und Basics
./script/groundzerotools.sh

# 2. Hyprland Setup (Wayland, EWW, Themes etc.)
./script/hyprland.sh

# 3. Gaming Tuning + Extras
./script/gamescript.sh

# 4. Labfactory (Platzhalter)
./script/labfactory.sh

# 5. Groundzero Meta-Update-System (alle 7 Tage)
./script/groundzero.sh
```

---

## 🧠 Groundzero Autoupdate-System

Ein systemd-gestützter Automatik-Updater sorgt für:

✅ Wöchentliche Komplettupdates (alle Skripte werden neu ausgeführt)  
✅ Aktualisierung des öffentlichen Google Drive Ordners mit `.txt`-Terminalhilfen

### Enthaltene Dateien:

```bash
~/.config/groundzero/groundzero.sh
~/.config/systemd/user/groundzero-update.timer
~/.config/systemd/user/groundzero-update.service
```

### Timer wird automatisch aktiviert:

```bash
systemctl --user enable --now groundzero-update.timer
```

### Manuell triggern:

```bash
bash ~/.config/groundzero/groundzero.sh
# oder
systemctl --user start groundzero-update.service
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
    ├── hyprland.sh
    ├── gamescript.sh
    ├── labfactory.sh
    ├── groundzero.sh
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
