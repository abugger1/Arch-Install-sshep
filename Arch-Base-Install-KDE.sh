#!/bin/bash
#
 sudo timedatectl set-ntp true
 sudo hwclock --systohc
#
#
 sudo firewall-cmd --add-port=1025-65535/tcp --permanent
 sudo firewall-cmd --add-port=1025-65535/udp --permanent
 sudo firewall-cmd --reload
#
 git clone https://aur.archlinux.org/pikaur.git
 cd pikaur
 makepkg -sic --noconfirm
 cd
 sudo rm -rf pikaur



 sudo pikaur -S powerpill zramd timeshift-bin timeshift-autosnap
#
 sudo systemctl enable --now zramd.service
#
 sudo powerpill -S vivid kvantum flameshot python zsh zsh-completions kitty-git kitty-terminfo unzip cmake zoxide fzf
#
#
# 
#
#pikaur -S --noconfirm system76-power
#sudo systemctl enable --now system76-power
#sudo system76-power graphics integrated
#pikaur -S --noconfirm auto-cpufreq
#sudo systemctl enable --now auto-cpufreq
#
#
sudo pacman -Syy gcc gcc-libs cmake
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# install starship
# cargo install nu --features=dataframe
 sudo pacman -S xorg sddm plasma base-devel ruby go nodejs npm fzf ranger lua libxau libxi libxss libxtst libxcursor libxcomposite libxdamage libxfixes libxrandr libxrender mesa-libgl  alsa-lib libglvnd vlc akonadi-calendar-tools alsa-utils ark artikulate audiocd-kio autoconf automake base bison blinken bluez-utils dolphin-plugins elisa fakeroot filelight flex grantlee-editor gwenview hplip htop inetutils itinerary juk kate kcalc kcharselect kcolorchooser kcron kde-dev-scripts kde-dev-utils kde-gtk-config kdebugsettings kdenetwork-filesharing kdeplasma-addons kdesdk-kio kdesdk-thumbnailers kdf kdialog kfind kfloppy kgamma5 kget kgpg  khelpcenter khotkeys kio-gdrive kio-zeroconf kmix kmousetool kontrast ksysguard ksystemlog kteatime ktorrent kwallet-pam kwayland-integration libreoffice-fresh lightdm-webkit-theme-litarvan linux-zen-headers lutris mpv neofetch network-manager-applet okular oxygen palapeli partitionmanager pkgconf plasma-browser-integration plasma-disks plasma-firewall plasma-pa plasma-sdk plasma-systemmonitor plasma-thunderbolt plasma-vault poxml print-manager python-jedi python-pipenv qbittorrent sddm-kcm spectacle stow sweeper flameshot firefox telepathy-kde-approver telepathy-kde-auth-handler telepathy-kde-call-ui telepathy-kde-contact-list telepathy-kde-contact-runner telepathy-kde-desktop-applets telepathy-kde-filetransfer-handler telepathy-kde-send-file telepathy-kde-text-ui neovim konsole
#
# sh -c "$(curl -fsSL https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh)"
git clone --bare https://github.com/abugger1/.cfg ~/.cfg
git clone https://github.com/abugger1/neovim ~/.config/nvim
sudo pacman -S xsel pip npm
# pip install pynvim
# npm -i g neovim
# npm install plugin-build
git clone https://github.com/abugger1/ranger ~/.config/ranger
git clone https://github.com/abugger1/zsh ~/.config/zsh
cp ~/.config/zsh/.zshenv ~
#


 sudo systemctl enable sddm
 echo "do not forget ranger"
# /bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
# sleep 5
# reboot
