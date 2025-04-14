```md
# ArchLinux Hyprland Groundzero

Minimalistisches, auf Performance ausgelegtes ArchLinux-Hyprland-Setup mit Gaming-, System- und Terminal-Tools – optimiert für Power-User, Pro-Gamer und Terminalfreunde.

---

## ⚡ Quick Start

```bash
bash <(curl -s https://raw.githubusercontent.com/ibandino/archlinux-hyprland-groundzero/main/install.sh)
```

---

## 🔧 Was installiert wird

Die `install.sh` führt dich automatisch durch alle Kernkomponenten:

1. `groundzerotools.sh`  
   → Systemtools, CLI-Utilities, Basis-Setup für z.B. Git, neofetch, htop, bat usw.

2. `hyprland.sh`  
   → Installiert Hyprland samt Konfigurationen, Wayland-Umgebung, EWW, Waybar, Wallpapers, Themes etc.

3. `gamescript.sh`  
   → Performance-Tools, Gaming-Tweaks, PipeWire-Fixes, spezielle Komponenten für Enemy Territory & co.

4. `labfactory.sh` *(Platzhalter für zukünftige Tools)*

5. `groundzero.sh` *(Neu)*  
   → Ein Meta-Skript, das regelmäßig alle obigen Komponenten neu ausführt und aktualisiert – automatisch alle **7 Tage**!

---

## 🔁 Automatische Updates (alle 7 Tage)

Damit dein System up-to-date bleibt, wird automatisch ein **systemd Timer** aktiviert, der wöchentlich folgende Dinge durchführt:

- Alle Hauptkomponenten (`tools`, `hyprland`, `gamescript`) aktualisieren
- Lokale Kopie eines **öffentlichen Google Drive Ordners** synchronisieren  
  → dieser enthält .txt-Dateien mit praktischen Terminalhilfen

**Technisch gelöst mit:**
- `~/.config/groundzero/groundzero.sh` → Meta-Update-Script
- `~/.config/systemd/user/groundzero-update.{service,timer}` → systemd Timer + Dienst
- Timer aktiviert sich beim Install automatisch (`systemctl --user enable --now ...`)

---

## 📁 Terminalhilfe aus Google Drive

Ein öffentlicher Google-Ordner mit Terminal-Snippets wird regelmäßig in dein Home-Verzeichnis gesynct:

```bash
~/terminalhilfe/
```

Darin enthalten sind kleine `.txt`-Dateien mit:
- Bash-Befehlen
- DNF/Pacman-Aliases
- Download-Snippets
- Wine/Proton/Pipewire-Tricks
- etc.

Diese Dateien werden **bei jedem automatischen Update geprüft & aktualisiert** – Änderungen auf dem Drive sind also sofort nach spätestens 7 Tagen bei dir lokal sichtbar.

---

## 🛠 Manuelle Steuerung (optional)

Du kannst das Update auch jederzeit manuell auslösen:

```bash
bash ~/.config/groundzero/groundzero.sh
```

Oder direkt via systemd:

```bash
systemctl --user start groundzero-update.service
```

---

## 📦 GitHub Struktur

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

## 📢 Hinweis

Das Setup ist modular aufgebaut – du kannst einzelne Komponenten durch Entfernen oder Ersetzen der Skripte anpassen.

---

> 💬 Fragen, Ideen oder Bugs? Erstelle ein Issue oder ping mich direkt. Viel Spaß mit Groundzero!
```
