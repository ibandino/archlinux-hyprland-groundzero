#!/bin/bash
set -euo pipefail
set -x  # 👈 zeigt alle ausgeführten Befehle im Terminal an

trap 'echo -e "\n\e[1;31m[!] Fehler erkannt – Installation abgebrochen. Issue oder reinstall : ./Install.sh\e[0m"' ERR

info() {
  echo -e "\e[1;34m[INFO]\e[0m $1"
}

info "🧬 Arch ist Hyprland, Hyprland ist Arch – alles andere ist Legacy."
info "Starte Groundzero Setup..."

# 0. Humor-Script
bash ./script/happy.sh

# 1. Core-Packages
info "# 0. GroundZero – Gemeinsame Folgepakete"
bash ./script/corepackages.sh

# 2. Tools-Grundausstattung
info "# 1. Tools – Grundausstattung"
bash ./script/groundzerotools.sh

# 3. Tools-Grundausstattung
info "# 1. Tools – Grundausstattung"
bash ./script/gamescript.sh

# 4. Hyprland Full-Setup
info "# 3. Hyprland JaKooLit Style + Updates + FullConfigs"
bash ./script/hyprland.sh

# 5. Labfactory
info "# 4. Labfactory Sektion"
bash ./script/labfactory.sh

# 6. CleanUp
info "# 5. CleanUp Sektion"
bash ./script/clean_groundzero.sh

# 7. Dotfiles kopieren
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

# Abschlussmeldung
info "✅ Groundzero automatiK Install Other Update Finish"

# Leerzeilen
printf "\n%.0s" {1..2}

# Arch-Logo in Lila
echo -e "\e[35m"
cat << "EOF"
 ▗▄▖▗▄▄▖ ▗▄▄▗▖ ▗▗▖  ▗▄▄▄▗▖  ▗▗▖ ▗▗▖  ▗▖   ▗▄▄▄▄▗▄▄▄▗▖  ▗▖    
▐▌ ▐▐▌ ▐▐▌  ▐▌ ▐▐▌    █ ▐▛▚▖▐▐▌ ▐▌▝▚▞▘       ▗▞▐▌  ▐▛▚▖▐▌    
▐▛▀▜▐▛▀▚▐▌  ▐▛▀▜▐▌    █ ▐▌ ▝▜▐▌ ▐▌ ▐▌      ▗▞▘ ▐▛▀▀▐▌ ▝▜▌    
▐▌ ▐▐▌ ▐▝▚▄▄▐▌ ▐▐▙▄▄▗▄█▄▐▌  ▐▝▚▄▞▗▞▘▝▚▖   ▐▙▄▄▄▐▙▄▄▐▌  ▐▌    
            ▗▖ ▗▗▖  ▗▗▄▄▖▗▄▄▖▗▖   ▗▄▖▗▖  ▗▗▄▄▄                
            ▐▌ ▐▌▝▚▞▘▐▌ ▐▐▌ ▐▐▌  ▐▌ ▐▐▛▚▖▐▐▌  █               
            ▐▛▀▜▌ ▐▌ ▐▛▀▘▐▛▀▚▐▌  ▐▛▀▜▐▌ ▝▜▐▌  █               
            ▐▌ ▐▌ ▐▌ ▐▌  ▐▌ ▐▐▙▄▄▐▌ ▐▐▌  ▐▐▙▄▄▀               
                                
EOF
echo -e "${reset}"
