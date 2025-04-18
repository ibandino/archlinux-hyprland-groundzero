#!/bin/bash
# 💫 https://github.com/ibandino 💫 #
# Hyprland-Dots from local repo (archlinux-hyprland-groundzero) #

## WARNING: DO NOT EDIT BEYOND THIS LINE IF YOU DON'T KNOW WHAT YOU ARE DOING! ##
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Change the working directory to the parent directory of the script
PARENT_DIR="$SCRIPT_DIR/.."
cd "$PARENT_DIR" || { echo "${ERROR} Failed to change directory to $PARENT_DIR"; exit 1; }

# Source the global functions script
if ! source "$(dirname "$(readlink -f "$0")")/Global_functions.sh"; then
  echo "Failed to source Global_functions.sh"
  exit 1
fi

# Path to the local repo (adjust this if needed)
LOCAL_DOTFILES_DIR="$PARENT_DIR/Hyprland-Dots-main"

# Check if the Hyprland-Dots directory exists locally
printf "${NOTE} Using local Hyprland Dots from ${LOCAL_DOTFILES_DIR}${RESET}....\n"

if [ -d "$LOCAL_DOTFILES_DIR" ]; then
  cd "$LOCAL_DOTFILES_DIR" || { echo "${ERROR} Failed to enter $LOCAL_DOTFILES_DIR"; exit 1; }
  chmod +x copy.sh
  ./copy.sh 
else
  echo -e "$ERROR Can't find Hyprland-Dots in the local repository at $LOCAL_DOTFILES_DIR."
  exit 1
fi

printf "\n%.0s" {1..2}
