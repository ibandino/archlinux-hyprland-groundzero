#!/bin/bash

info() { echo -e "\e[1;32m[+] $1 \e[0m"; }
continue_prompt() {
  echo -ne "\e[1;33m→ Drücke [ENTER] zum Fortfahren (oder warte 3 Sekunden) \e[0m"
  read -t 3 -n 1 input
  echo ""
}

info "Starte Groundzero Setup..."
continue_prompt

info "initialisiere"
continue_prompt

info "# 0.GroundZero - Gemeinsame folge packete"
continue_prompt
bash ./script/corepackages.sh

info "# 1. Tools - Grundaustattung"
continue_prompt
bash ./script/groundzerotools.sh

info "# 2. Gamescript"
continue_prompt
bash ./script/gamescript.sh

info "# 3. Hyprland JaKooLit Style + Updates + FullConfigs"
continue_prompt
bash ./script/hyprland.sh

info "# 4. Labfactory Sektion"
continue_prompt
bash ./script/labfactory.sh

info "# 5. CleanUp Sektion"
continue_prompt
bash ./script/clean_groundzero.sh

info "✅ Groundzero automatische Install Ohter Update Finish"

# ARCH-LOGO in Regenbogenfarben anzeigen (mit lolcat)
if command -v lolcat &> /dev/null; then
  echo -e "\n" && cat ./art/archlogo.txt | lolcat
else
  echo -e "\n[+] Hinweis: 'lolcat' nicht installiert – ASCII-Logo ohne Farbe:\n"
  cat ./art/archlogo.txt
fi

echo -e "\n\e[1;32m[✓] Setup abgeschlossen. Du kannst jetzt manuell rebooten oder direkt Hyprland starten!\e[0m"

