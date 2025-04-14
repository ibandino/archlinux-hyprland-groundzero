#!/bin/bash
set -e  # Stoppe bei Fehlern

wait_for_user() {
  echo
  read -n1 -p "➡️  Weiter mit [j] drücken..." REPLY
  if [[ $REPLY != "j" ]]; then
    echo -e "\n❌ Abbruch – du hast nicht 'j' gedrückt."
    exit 1
  fi
  echo -e "\n✅ Weiter..."
}

echo "📦 System wird aktualisiert..."
sudo pacman -Syu --noconfirm
echo "⏳ Warte 3 Sekunden..."
sleep 3
wait_for_user

# Yay prüfen & ggf. installieren
if ! command -v yay &> /dev/null; then
    echo "📥 Yay wird installiert..."
    cd ~
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
    echo "⏳ Warte 3 Sekunden..."
    sleep 3
    wait_for_user
fi

echo "🧰 Installiere Kernel & Systemtools..."
sudo pacman -Syu --needed --noconfirm \
  linux-zen \
  linux-zen-headers \
  xorg-xwayland \
  kitty \
  git base-devel neovim wget curl \
  zsh zsh-completions starship
echo "⏳ Warte 3 Sekunden..."
sleep 3
wait_for_user

echo "💻 Entwickler-Werkzeuge werden installiert..."
sudo pacman -S --noconfirm python nano kwrite kate
yay -S --noconfirm visual-studio-code-bin pycharm-community-edition
echo "⏳ Warte 3 Sekunden..."
sleep 3
wait_for_user

echo "🌐 Browser + Kommunikation..."
sudo pacman -S --noconfirm firefox telegram-desktop
yay -S --noconfirm twitch-cli
echo "⏳ Warte 3 Sekunden..."
sleep 3
wait_for_user

echo "🎨 Multimedia & Recording Tools..."
sudo pacman -S --noconfirm obs-studio gimp
echo "⏳ Warte 3 Sekunden..."
sleep 3
wait_for_user

echo "⚙️ System-Tools..."
sudo pacman -S --noconfirm cpupower
echo "⏳ Warte 3 Sekunden..."
sleep 3
wait_for_user

echo "✅ Alle Tools wurden erfolgreich installiert!"
