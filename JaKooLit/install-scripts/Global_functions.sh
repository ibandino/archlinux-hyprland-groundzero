#!/bin/bash
# JaKooLit modifikation GroundZero
# Global Functions for Scripts

set -e

LOG="${LOG:-Install-Logs/install.log}"

# Set some colors for output messages
OK="$(tput setaf 2)[OK]$(tput sgr0)"
ERROR="$(tput setaf 1)[ERROR]$(tput sgr0)"
NOTE="$(tput setaf 3)[NOTE]$(tput sgr0)"
INFO="$(tput setaf 4)[INFO]$(tput sgr0)"
WARN="$(tput setaf 1)[WARN]$(tput sgr0)"
CAT="$(tput setaf 6)[ACTION]$(tput sgr0)"
MAGENTA="$(tput setaf 5)"
ORANGE="$(tput setaf 214)"
WARNING="$(tput setaf 1)"
YELLOW="$(tput setaf 3)"
GREEN="$(tput setaf 2)"
BLUE="$(tput setaf 4)"
SKY_BLUE="$(tput setaf 6)"
RESET="$(tput sgr0)"

# Create Directory for Install Logs
[ ! -d Install-Logs ] && mkdir Install-Logs

# Show progress spinner
show_progress() {
    local pid=$1
    local package_name=$2
    local spin_chars=("●○○○○○○○○○" "○●○○○○○○○○" "○○●○○○○○○○" "○○○●○○○○○○" "○○○○●○○○○○" \
                      "○○○○○●○○○○" "○○○○○○●○○○" "○○○○○○○●○○" "○○○○○○○○●○" "○○○○○○○○○●")
    local i=0

    tput civis
    printf "\r${NOTE} Installing ${YELLOW}%s${RESET} ..." "$package_name"

    while ps -p $pid &> /dev/null; do
        printf "\r${NOTE} Installing ${YELLOW}%s${RESET} %s" "$package_name" "${spin_chars[i]}"
        i=$(( (i + 1) % 10 ))
        sleep 0.3
    done

    printf "\r${NOTE} Installing ${YELLOW}%s${RESET} ... Done!%-20s \n" "$package_name" ""
    tput cnorm
}

# Install package with pacman
install_package_pacman() {
  if pacman -Q "$1" &>/dev/null; then
    echo -e "${INFO} ${MAGENTA}$1${RESET} is already installed. Skipping..."
  else
    (
      stdbuf -oL sudo pacman -S --noconfirm "$1" 2>&1
    ) >> "$LOG" 2>&1 &
    PID=$!
    show_progress $PID "$1"

    if pacman -Q "$1" &>/dev/null; then
      echo -e "${OK} Package ${YELLOW}$1${RESET} has been successfully installed!"
    else
      echo -e "\n${ERROR} ${YELLOW}$1${RESET} failed to install. Please check the $LOG."
    fi
  fi
}

ISAUR=$(command -v yay || command -v paru)

# Install AUR package with yay or paru (with check)
install_package() {
  if $ISAUR -Q "$1" &>/dev/null; then
    echo -e "${INFO} ${MAGENTA}$1${RESET} is already installed. Skipping..."
  else
    (
      stdbuf -oL $ISAUR -S --noconfirm "$1" 2>&1
    ) >> "$LOG" 2>&1 &
    PID=$!
    show_progress $PID "$1"

    if $ISAUR -Q "$1" &>/dev/null; then
      echo -e "${OK} Package ${YELLOW}$1${RESET} has been successfully installed!"
    else
      echo -e "\n${ERROR} ${YELLOW}$1${RESET} failed to install. Check $LOG."
    fi
  fi
}

# Install AUR package ohne Check
install_package_f() {
  (
    stdbuf -oL $ISAUR -S --noconfirm "$1" 2>&1
  ) >> "$LOG" 2>&1 &
  PID=$!
  show_progress $PID "$1"

  if $ISAUR -Q "$1" &>/dev/null; then
    echo -e "${OK} Package ${YELLOW}$1${RESET} has been successfully installed!"
  else
    echo -e "\n${ERROR} ${YELLOW}$1${RESET} failed to install. Check $LOG."
  fi
}

# Remove package via pacman
uninstall_package() {
  local pkg="$1"

  if pacman -Qi "$pkg" &>/dev/null; then
    echo -e "${NOTE} Removing ${YELLOW}$pkg${RESET} ..."
    sudo pacman -R --noconfirm "$pkg" 2>&1 | tee -a "$LOG" | grep -v "error: target not found"

    if ! pacman -Qi "$pkg" &>/dev/null; then
      echo -e "\e[1A\e[K${OK} ${YELLOW}$pkg${RESET} removed."
    else
      echo -e "\e[1A\e[K${ERROR} ${YELLOW}$pkg${RESET} removal failed."
      return 1
    fi
  else
    echo -e "${WARN} ${YELLOW}$pkg${RESET} is not installed."
  fi
}
