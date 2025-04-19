#!/bin/bash
set -euo pipefail
trap 'echo -e "\n\e[1;31m[!] Fehler erkannt – Installation abgebrochen.\e[0m"' ERR

green="\e[1;32m"
yellow="\e[1;33m"
reset="\e[0m"

info 🧬 "Arch ist Hyprland, Hyprland ist Arch – alles andere ist Legacy."
info    "Starte Groundzero Setup..."

#Humorscript
bash ./script/happy.sh

info "# 0.GroundZero - Gemeinsame folge packete"
bash ./script/corepackages.sh

info "# 1. Tools - Grundaustattung"
bash ./script/groundzerotools.sh

warn_pacman_conf() {
  echo -e "\e[1;33m"
  echo "╔════════════════════════════════════════════════════╗"
  echo "║                                                    ║"
  echo "║ ⚠️  Achtung! Damit das Game-Script funktioniert:     ║"
  echo "║                                                    ║"
  echo "║  → Öffne /etc/pacman.conf und aktiviere Multilib:   ║"
  echo "║                                                    ║"
  echo "║     [multilib]                                     ║"
  echo "║     Include = /etc/pacman.d/mirrorlist             ║"
  echo "║                                                    ║"
  echo "║  Danach ausführen:                                 ║"
  echo "║     sudo pacman -Syy                               ║"
  echo "║                                                    ║"
  echo "║  Und dieses Script erneut starten:                 ║"
  echo "║     ./install.sh                                   ║"
  echo "║                                                    ║"
  echo "╚════════════════════════════════════════════════════╝"
  echo -e "\e[0m"
  continue_prompt
}

info "# 2. Gamescript"
warn_pacman_conf
bash ./script/gamescript.sh

info "# 3. Hyprland JaKooLit Style + Updates + FullConfigs"
bash ./script/hyprland.sh

info "# 4. Labfactory Sektion"
bash ./script/labfactory.sh

info "# 5. CleanUp Sektion"
bash ./script/clean_groundzero.sh

info "# 6. Dotfiles kopieren"
DOTDIR="$HOME/archlinux-hyprland-groundzero/Hyprland-Dots-main"
COPY_SCRIPT="$DOTDIR/copy.sh"

if [[ -d "$DOTDIR" ]]; then
  cd "$DOTDIR" || { echo -e "\e[1;31m[!] Konnte nicht in $DOTDIR wechseln!\e[0m"; exit 1; }
  
  if [[ -f "copy.sh" ]]; then
    chmod +x copy.sh
    bash copy.sh
  else
    echo -e "\e[1;31m[!] copy.sh nicht gefunden in $DOTDIR!\e[0m"
    exit 1
  fi

else
  echo -e "\e[1;31m[!] Verzeichnis $DOTDIR existiert nicht!\e[0m"
  exit 1
fi


info "✅ Groundzero automatiK Install Ohter Update Finish"

# Leerzeilen
printf "\n%.0s" {1..2}

# Lila Farbe
echo -e "\e[35m"

# Regenbogen-Arch-ASCII-Logo in Lila (kannst später mit lolcat spielen)
cat << "EOF"
 ▗▄▖▗▄▄▖ ▗▄▄▗▖ ▗▗▖  ▗▄▄▄▗▖  ▗▗▖ ▗▗▖  ▗▖    ▗▄▄▄▄▗▄▄▄▗▖  ▗▖    
▐▌ ▐▐▌ ▐▐▌  ▐▌ ▐▐▌    █ ▐▛▚▖▐▐▌ ▐▌▝▚▞▘        ▗▞▐▌  ▐▛▚▖▐▌    
▐▛▀▜▐▛▀▚▐▌  ▐▛▀▜▐▌    █ ▐▌ ▝▜▐▌ ▐▌ ▐▌       ▗▞▘ ▐▛▀▀▐▌ ▝▜▌    
▐▌ ▐▐▌ ▐▝▚▄▄▐▌ ▐▐▙▄▄▗▄█▄▐▌  ▐▝▚▄▞▗▞▘▝▚▖    ▐▙▄▄▄▐▙▄▄▐▌  ▐▌    
            ▗▖ ▗▗▖  ▗▗▄▄▖▗▄▄▖▗▖   ▗▄▖▗▖  ▗▗▄▄▄                
            ▐▌ ▐▌▝▚▞▘▐▌ ▐▐▌ ▐▐▌  ▐▌ ▐▐▛▚▖▐▐▌  █               
            ▐▛▀▜▌ ▐▌ ▐▛▀▘▐▛▀▚▐▌  ▐▛▀▜▐▌ ▝▜▐▌  █               
            ▐▌ ▐▌ ▐▌ ▐▌  ▐▌ ▐▐▙▄▄▐▌ ▐▐▌  ▐▐▙▄▄▀               
         ▗▄▄▗▄▄▖ ▗▄▖▗▖ ▗▗▖  ▗▗▄▄▄▗▄▄▄▄▗▄▄▄▗▄▄▖ ▗▄▖            
        ▐▌  ▐▌ ▐▐▌ ▐▐▌ ▐▐▛▚▖▐▐▌  █  ▗▞▐▌  ▐▌ ▐▐▌ ▐▌           
        ▐▌▝▜▐▛▀▚▐▌ ▐▐▌ ▐▐▌ ▝▜▐▌  █▗▞▘ ▐▛▀▀▐▛▀▚▐▌ ▐▌           
        ▝▚▄▞▐▌ ▐▝▚▄▞▝▚▄▞▐▌  ▐▐▙▄▄▐▙▄▄▄▐▙▄▄▐▌ ▐▝▚▄▞▘           
▗▄▄▄▗▄▄▄▗▖  ▗▗▄▄▄▖▗▄▄▖▗▄▄▗▖ ▗▖    ▗▄▄▖▗▄▄▄▗▄▄▖ ▗▄▖ ▗▄▗▄▄▄▖    
▐▌    █ ▐▛▚▖▐▌ █ ▐▌  ▐▌  ▐▌ ▐▌    ▐▌ ▐▐▌  ▐▌ ▐▐▌ ▐▐▌ ▐▌█      
▐▛▀▀▘ █ ▐▌ ▝▜▌ █  ▝▀▚▐▌  ▐▛▀▜▌    ▐▛▀▚▐▛▀▀▐▛▀▚▐▌ ▐▐▌ ▐▌█      
▐▌  ▗▄█▄▐▌  ▐▗▄█▄▗▄▄▞▝▚▄▄▐▌ ▐▌    ▐▌ ▐▐▙▄▄▐▙▄▞▝▚▄▞▝▚▄▞▘█      
EOF

# Farbe zurücksetzen
echo -e "\e[0m"
printf "\n%.0s" {1..1}

echo -e "\n\e[1;32m[✓] Setup abgeschlossen. Du kannst jetzt manuell rebooten oder direkt Hyprland starten!\e[0m"

# Warte auf ENTER oder automatisch weiter nach 5 Sekunden
echo -e "\e[33m[INFO]\e[0m Drücke ENTER zum Fortfahren... (automatischer Start in 5 Sekunden)"
read -t 5 -p ""  # wartet auf Enter für 5 Sekunden, dann automatisch weiter
