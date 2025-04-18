#!/bin/bash
# 💫 https://github.com/JaKooLit 💫 #
# Hyprland-Dots to download from main #

set -e

# Farbdefinitionen laden
if ! source "$(dirname "$(readlink -f "$0")")/Global_functions.sh"; then
  echo -e "[ERROR] Global_functions.sh konnte nicht geladen werden!"
  exit 1
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PARENT_DIR="$SCRIPT_DIR/.."
cd "$PARENT_DIR" || { echo -e "${ERROR} Konnte nicht ins Verzeichnis $PARENT_DIR wechseln!"; exit 1; }

echo -e "${NOTE} Cloning and Installing ${SKY_BLUE}GroundZero Hyprland Dots${RESET}..."

# Ordner vorhanden?
if [ -d Hyprland-Dots ]; then
  cd Hyprland-Dots || exit 1
  git stash && git pull
  chmod +x copy.sh
  ./copy.sh
else
  # Frisch klonen
  if git clone --depth=1 https://github.com/JaKooLit/Hyprland-Dots; then
    cd Hyprland-Dots || exit 1
    chmod +x copy.sh
    ./copy.sh
  else
    echo -e "${ERROR} Download von ${YELLOW}KooL's Hyprland-Dots${RESET} fehlgeschlagen – Check deine Internetverbindung."
    exit 1
  fi
fi

printf "\n%.0s" {1..2}
