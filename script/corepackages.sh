#!/bin/bash

# Zentrale Installation gemeinsamer Pakete
echo "📦 # 0 Installiere gemeinsame Pakete..."

sudo pacman -S --noconfirm \
    neofetch \
    htop \
    git \
    wget \
    curl \
    unzip \
    zsh \
    nano \
    btop \
    fastfetch \
    lsof \
    ripgrep \
    fzf \
    lolcat

echo "✅ Gemeinsame Pakete installiert."
