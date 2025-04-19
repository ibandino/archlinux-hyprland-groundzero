#!/bin/bash
set -e

cd "$(dirname "$0")"

info() { echo -e "\e[1;32m[+] $1 \e[0m"; }
continue_prompt() {
  echo -ne "\e[1;33m→ $1 (enter) \e[0m"
  read -t 10 -n 1 input || true
  echo ""
}

ascii_stage() {
  clear
  echo -e "\e[1;36m"
  echo "╔════════════════════════════════════╗"
  echo "║      ⚡️ Bist du bereit für ⚡️      ║"
  echo "║          🚀 GroundZero? 🚀         ║"
  echo "║                                    ╚════════════════════════════════════════════╗"
  echo "║▗▖   ▗▄▖▗▖  ▗▗▄▄▄▖    ▗▖ ▗▗▄▄▄▗▖  ▗▗▄▄▖ ▗▄▖ ▗▄▖▗▄▄▖▗▄▄▄     ▗▄▄▄▗▄▄▄▗▄▄▖ ▗▄▄▗▄▄▄▖║"
  echo "║▐▌  ▐▌ ▐▐▌  ▐▐▌       ▐▌▗▞▐▌   ▝▚▞▘▐▌ ▐▐▌ ▐▐▌ ▐▐▌ ▐▐▌  █    ▐▌    █ ▐▌ ▐▐▌    █  ║"
  echo "║▐▌  ▐▌ ▐▐▌  ▐▐▛▀▀▘    ▐▛▚▖▐▛▀▀▘ ▐▌ ▐▛▀▚▐▌ ▐▐▛▀▜▐▛▀▚▐▌  █    ▐▛▀▀▘ █ ▐▛▀▚▖▝▀▚▖ █  ║"
  echo "║▐▙▄▄▝▚▄▞▘▝▚▞▘▐▙▄▄▖    ▐▌ ▐▐▙▄▄▖ ▐▌ ▐▙▄▞▝▚▄▞▐▌ ▐▐▌ ▐▐▙▄▄▀    ▐▌  ▗▄█▄▐▌ ▐▗▄▄▞▘ █  ║"
  echo "║                                                                                 ║"
  echo "╚═════════════════════════════════════════════════════════════════════════════════╝"
  echo -e "\e[0m"
  continue_prompt "jes Baby!"
}

ascii_confirm() {
  clear
  echo -e "\e[1;35m"
  echo "╔════════════════════════════╗"
  echo "║                            ║"
  echo "║  🤨 Bist du es wirklich?   ║"
  echo "║                            ╚═══════════════════════════╗"
  echo "║▗▄▄▄▖    ▗▖ ▗▖▗▄▖▗▖  ▗▗▄▄▄▖    ▗▄▄▄▗▄▖      ▗▄▄▗▄▄▄▗▄▄▄▖║"
  echo "║  █      ▐▌ ▐▐▌ ▐▐▛▚▖▐▌ █        █▐▌ ▐▌    ▐▌  ▐▌  ▐▌   ║"
  echo "║  █      ▐▌ ▐▐▛▀▜▐▌ ▝▜▌ █        █▐▌ ▐▌     ▝▀▚▐▛▀▀▐▛▀▀▘║"
  echo "║▗▄█▄▖    ▐▙█▟▐▌ ▐▐▌  ▐▌ █        █▝▚▄▞▘    ▗▄▄▞▐▙▄▄▐▙▄▄▖║"
  echo "║                                                        ║"
  echo "╚════════════════════════════════════════════════════════╝"
  echo -e "\e[0m"
  continue_prompt "Jeeeeesssss Buddy!"
}

ascii_coffee() {
  clear
  echo -e "\e[1;34m"
  echo "╔══════════════════════════════════════════════════════════════════╗"
  echo "║                                                                  ║"
  echo "║  ☕️ Hast du dir schon einen Kaffee geholt bevor du loslegst?     ║"
  echo "║                                                                  ║"
  echo "║     ▗▄▄▄ ▗▄▖     ▗▖  ▗▗▄▖▗▖ ▗▖    ▗▖ ▗▖▗▄▖▗▖  ▗▗▄▄▄▖             ║"
  echo "║     ▐▌  ▐▌ ▐▌     ▝▚▞▐▌ ▐▐▌ ▐▌    ▐▌ ▐▐▌ ▐▐▌  ▐▐▌                ║"
  echo "║     ▐▌  ▐▌ ▐▌      ▐▌▐▌ ▐▐▌ ▐▌    ▐▛▀▜▐▛▀▜▐▌  ▐▐▛▀▀▘             ║"
  echo "║     ▐▙▄▄▝▚▄▞▘      ▐▌▝▚▄▞▝▚▄▞▘    ▐▌ ▐▐▌ ▐▌▝▚▞▘▐▙▄▄▖             ║"
  echo "║       ▗▄▄▄▗▖  ▗▗▄▄▄▗▄▄▗▖  ▗▗▄▄▄▗▖ ▗▗▄▄▄▗▖  ▗▖▗▄▄▖                ║"
  echo "║       ▐▌  ▐▌  ▐▐▌  ▐▌ ▐▝▚▞▘  █ ▐▌ ▐▌ █ ▐▛▚▖▐▐▌                   ║"
  echo "║       ▐▛▀▀▐▌  ▐▐▛▀▀▐▛▀▚▖▐▌   █ ▐▛▀▜▌ █ ▐▌ ▝▜▐▌▝▜▌                ║"
  echo "║       ▐▙▄▄▖▝▚▞▘▐▙▄▄▐▌ ▐▌▐▌   █ ▐▌ ▐▗▄█▄▐▌  ▐▝▚▄▞▘                ║"   
  echo "║                                                                  ║"
  echo "╚══════════════════════════════════════════════════════════════════╝"
  echo -e "\e[0m"
  continue_prompt "ahuuuuuuuuuuuu !"
}

ascii_issue_hint() {
  clear
  echo -e "\e[1;33m"
  echo "╔═════════════════════════════════════════╗"
  echo "║                                         ║"
  echo "║  🐛 Wenn was nicht stimmt,              ║"
  echo "║     schreib bitte eine Issue, ok?       ║"
  echo "║                                         ║"
  echo "╚═════════════════════════════════════════╝"
  echo -e "\e[0m"
  continue_prompt "ich versuch's, ja"
}

# Startsequenz
ascii_stage
ascii_confirm
ascii_coffee
ascii_final_check
ascii_issue_hint

info "Okay, GroundZero wird vorbereitet..."
sleep 1
clear
