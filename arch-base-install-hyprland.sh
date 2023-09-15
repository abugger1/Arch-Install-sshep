#!/bin/bash
#
 sudo timedatectl set-ntp true
 sudo hwclock --systohc
#
#
#
#
#
 sudo pacman -Syy gcc gcc-libs cmake
 curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#
 source $HOME/.cargo/env
#
 git clone https://aur.archlinux.org/paru.git
 cd paru
 makepkg -si 
 cd
 sudo rm -rf paru
#
#
#
 paru -S powerpill zramd timeshift-bin timeshift-autosnap
#
 sudo systemctl enable --now zramd.service
#
 paru -S vivid kvantum flameshot zsh zsh-completions kitty-git kitty-terminfo-git unzip cmake zoxide fzf wezterm
#
#
# 
#
# paru -S system76-power
# sudo systemctl enable --now system76-power
# sudo system76-power graphics integrated
# paru -S auto-cpufreq
# sudo systemctl enable --now auto-cpufreq
#
# install starship
# cargo install nu --features=dataframe
 cargo install starship
#
paru -S hyprland-nvidia-git python hyprpicker-git waybar-git  \
 dunst nwg-look wf-recorder wlogout wlsunset        \
 colord ffmpegthumbnailer gnome-keyring grimblast-git gtk-engine-murrine \
 imagemagick kvantum pamixer playerctl polkit-kde-agent qt5-quickcontrols        \
 qt5-quickcontrols2 qt5-wayland qt6-wayland swaybg ttf-font-awesome tumbler     \
 ttf-jetbrains-mono ttf-icomoon-feather xdg-desktop-portal-hyprland-git xdotool  \
 xwaylandvideobridge-cursor-mode-2-git cliphist qt5-imageformats qt5ct           \
 btop cava neofetch noise-suppression-for-voice                   \
 rofi-lbonn-wayland-git rofi-emoji starship zsh viewnior ocs-url           \
 firefox brave-bin file-roller noto-fonts noto-fonts-cjk ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-firacode-nerd            \
 noto-fonts-emoji thunar thunar-archive-plugin           \
 catppuccin-gtk-theme-macchiato catppuccin-gtk-theme-mocha papirus-icon-theme sddm-git swaylock-effects-git kvantum kvantum-theme-catppuccin-git           \
 obs-studio-rc ffmpeg-obs cef-minimal-obs-rc-bin             \
 pipewire pipewire-alsa pipewire-audio pipewire-pulse         \
 pipewire-jack wireplumber gst-plugin-pipewire pavucontrol swww pywal
# sh -c "$(curl -fsSL https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh)"
# git clone --bare https://github.com/abugger1/.cfg ~/.cfg
#
 sudo systemctl enable sddm
#
 git clone https://github.com//abugger1/dots $HOME/repos/dots/
 # cd $HOME/repos/dots/
 # rsync -avxHAXP --exclude '.git*' .* ~/
# git clone https://github.com/abugger1/ranger ~/.config/ranger
# git clone https://github.com/abugger1/zsh ~/.config/zsh
# cp ~/.config/zsh/.zshenv ~
#
echo "https://wiki.hyprland.org/"
