#!/bin/bash

sudo pacman -Syu

sudo pacman -S --noconfirm \
    zathura dunst btop waybar hypridle hyprlock hyprpaper alacritty ranger rofi firefox-developer-edition chromium \
    telegram-desktop wl-clipboard grim slurp npm pnpm yarn gimp qt5ct lxappearance foliate \
    fastfetch zsh materia-gtk-theme pavucontrol zip unzip tree obs-studio audacity steam \
    imv mpv noto-fonts-cjk zig python nodejs ttf-dejavu noto-fonts-emoji kdenlive sof-firmware \
    zathura-pdf-mupdf fzf docker docker-compose alsa-utils dnsutils distrobox bluez bluez-utils cheese \
    wlogout vesktop spotify video-downloader ncdu

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

mkdir -p ~/Dev
mkdir -p ~/Documents/books
mkdir -p ~/Pictures/{walls,screenshots}
mkdir -p ~/Videos/screencaptures
mkdir -p ~/.local/bin

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

yay -S ttf-jetbrains-mono-nerd
