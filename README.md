Klar, hier ist eine überarbeitete und saubere Version der `README.md`, perfekt abgestimmt auf dein Projektziel:

---

# 🧱 ArchLinux Hyprland GroundZero

Ein skriptgesteuertes Arch-Linux-Setup für Minimalisten, Entwickler, Gamer und TTY-Enthusiasten.  
Ziel: **Ein komplettes Arch-System direkt aus der Konsole (TTY) aufbauen**, inklusive Hyprland, Dev-Tools und Gaming-Umgebung in einem wisch.

---

## ⚡ Schnellstart

```bash
git clone https://github.com/ibandino/archlinux-hyprland-groundzero.git
cd archlinux-hyprland-groundzero
chmod +x install.sh
./install.sh
```

---

## 🔁 Was wird installiert?

### 1. `groundzerotools.sh`  
> Developer-Tools, Browser & Medienprogramme  
**Enthält:**  
- VS Code, PyCharm, Python, Nano, Kate, KWrite  
- Firefox, Telegram, Twitch (AUR)  
- OBS Studio, GIMP  
- cpupower

---

### 2. `hyprland.sh`  
> Komplettes Hyprland-Setup  
**Installiert automatisch:**  
- Hyprland, Pyprland, Waybar  
- Fonts, Themes & JaKooLit-Style

---

### 3. `gamescript.sh`  
> Gaming-Komponenten für Linux  
**Beinhaltet:**  
- Steam (Native)  
- Wine, Winetricks, PortProton (yay)  
- Lutris, Gamemode, Gamescope  
- Mesa + Vulkan Tools

---

## 🛡️ Intelligente Installation

Alle Skripte prüfen automatisch, ob Programme bereits installiert sind – keine Dopplungen, keine unnötigen Installationen.

---

## ❓ Voraussetzungen

- Frische Arch-Installation ohne Desktop
- Git + Internetverbindung  
- TTY-Zugang (z. B. über `Ctrl+Alt+F2`)

---

## ✍️ Mitmachen

Pull-Requests & Forks willkommen!  
Hilf mit, dieses Projekt zur perfekten Arch-Setup-Basis zu machen.

---

Wenn du magst, kann ich dir jetzt auch noch ein `Makefile` bauen, das dieselben Scripts ausführt – oder das Ganze optional interaktiv mit `dialog` oder `whiptail` gestalten. Sag Bescheid!
