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
 makepkg -sic --noconfirm
 cd
 sudo rm -rf paru
#
#
#
sudo paru -S powerpill zramd timeshift-bin timeshift-autosnap
#
 sudo systemctl enable --now zramd.service
#
 sudo powerpill -S vivid kvantum flameshot python zsh zsh-completions kitty-git kitty-terminfo unzip cmake zoxide fzf wezterm
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
 cargo install nu --features=dataframe
 cargo install starship
#
paru -Syy hyprland-git hyprpicker-git waybar-git dunst ngw-look wf-recorder wlogout wlsunset \
    colord ffmpegthumbnailer gnome-keyring grimblast-git gtk-engine-murrine \
    imagemagick pamixer playerctl polkit-kde-agent qt5-quickcontrols qt5-quickcontrols2 qt5-wayland \
    swaybg ttf-font-awesome ttf-firacode-nerd tumbler ttf-jetbrains-mono ttf-icmoon-feather \
    xdg-desktop-portal-hyprland-git xdotool xwaylandvideobridge-cursor-mode-2-git cliphist qt5-imageformats qt5ct \
    btop cava neofetch noise-suppression-for-voice rofi-lbonn-wayland-git rofi-emoji viewnior ocs-url \
    brave-bin firefox-nightly firefox chromium file-roller noto-fonts noto-fonts-cjk noto-fonts-emoji thunar thunar-archive-plugin \
    catppuccin-gtk-theme-macciato catppuccin-gtk-theme-mocha papyrus-icon-theme sddm-git swaylock-effects-git \
    kvantum-catppuccin-git obs-studio-rc ffmpeg-obs cef-minimal-obs-rc-bin \
    pipewire pipewire-alsa pipewire-audio pipewire-pulse pipewire-jack wireplumber gst-plugin-pipewire pavucontrol
#
# sh -c "$(curl -fsSL https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh)"
 git clone --bare https://github.com/abugger1/.cfg ~/.cfg
#
#
 git clone https://github.com/linuxmobile/hyprland-dots $HOME/Downloads/hyprland-dots/
cd $HOME/Downloads/hyprland-dots/
rsync -avxHAXP --exclude '.git*' .* ~/
# git clone https://github.com/abugger1/ranger ~/.config/ranger
# git clone https://github.com/abugger1/zsh ~/.config/zsh
# cp ~/.config/zsh/.zshenv ~
#
#
#
 sudo systemctl enable sddm
#
