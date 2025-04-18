#!/bin/bash

# Zentrale Installation gemeinsamer Pakete
echo "📦 Installiere gemeinsame Pakete..."

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
    fzf

echo "✅ Gemeinsame Pakete installiert."
