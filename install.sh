#!/bin/bash

set -e  # bricht bei Fehlern ab

# Farben
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
RESET="\e[0m"

log_success() {
    echo -e "${GREEN}[OK] $1${RESET}"
}

log_skip() {
    echo -e "${YELLOW}[SKIP] $1 bereits installiert${RESET}"
}

log_error() {
    echo -e "${RED}[FEHLER] $1${RESET}"
}

run_script_if_needed() {
    local name=$1
    local check_cmd=$2
    local script=$3

    echo "🔍 Prüfe: $name ..."

    if eval "$check_cmd"; then
        log_skip "$name"
    else
        echo "🚀 Starte Installation: $name"
        if bash "$script"; then
            log_success "$name installiert"
        else
            log_error "$name fehlgeschlagen"
        fi
    fi
}

# 1. GroundZeroTools
run_script_if_needed "GroundZero Tools" "command -v code &>/dev/null && command -v pycharm &>/dev/null && command -v twitch &>/dev/null" "script/groundzerotools.sh"

# 2. Hyprland
run_script_if_needed "Hyprland" "command -v Hyprland &>/dev/null || command -v hyprctl &>/dev/null" "script/hyprland.sh"

# 3. GameScript
run_script_if_needed "Game Tools" "command -v steam &>/dev/null && command -v wine &>/dev/null && command -v lutris &>/dev/null" "script/gamescript.sh"

echo -e "\n${GREEN}🎉 Alle gewünschten Komponenten wurden bearbeitet!${RESET}"
