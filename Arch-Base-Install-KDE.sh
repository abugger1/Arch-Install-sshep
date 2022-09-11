#!/bin/bash
#
 sudo timedatectl set-ntp true
 sudo hwclock --systohc
#
# sudo reflector --country 'United States' --latest 20 --protocol https --sort rate --save /etcpacman.d/mirrorlist
#
 sudo firewall-cmd --add-port=1025-65535/tcp --permanent
 sudo firewall-cmd --add-port=1025-65535/udp --permanent
 sudo firewall-cmd --reload
#
# git clone https://aur.archlinux.org/pikaur.git
# cd pikaur/
# makepkg -si --noconfirm
#



sudo pikaur -S powerpill zramd
#
 sudo systemctl enable --now zramd.service
#
 sudo powerpill -S python nerd-fonts-fira-code zsh zsh-completions kitty-git kitty-terminfo timeshift-bin timeshift-autosnap unzip cmake zoxide fzf
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
 sudo pacman -S xorg sddm plasma base-devel ranger lua libxau libxi libxss libxtst libxcursor libxcomposite libxdamage libxfixes libxrandr libxrender mesa-libgl  alsa-lib libglvnd vlc akonadi-calendar-tools alsa-utils ark artikulate audiocd-kio autoconf automake base bison blinken bluez-utils bomber bovo cantor cervisia dialog dolphin-plugins dragon elisa fakeroot filelight flex foxitreader grantlee-editor gwenview hplip htop inetutils itinerary juk kate kcalc kcharselect kcolorchooser kcron kde-dev-scripts kde-dev-utils kde-gtk-config kdebugsettings kdenetwork-filesharing kdeplasma-addons kdesdk-kio kdesdk-thumbnailers kdf kdialog kfind kfloppy kgamma5 kget kgpg  khelpcenter khotkeys kio-gdrive kio-zeroconf kmix kmousetool kontrast kruler ksysguard ksystemlog kteatime ktorrent kwallet-pam kwayland-integration libreoffice-fresh lightdm-webkit-theme-litarvan linux-xanmod-edge-headers linux-zen-headers lutris modprobed-db mpv neofetch network-manager-applet okular oxygen palapeli partitionmanager pkgconf plasma-browser-integration plasma-disks plasma-firewall plasma-pa plasma-sdk plasma-systemmonitor plasma-thunderbolt plasma-vault poxml print-manager python-jedi python-pipenv qbittorrent sddm-kcm spectacle stow sweeper telepathy-kde-approver telepathy-kde-auth-handler telepathy-kde-call-ui telepathy-kde-contact-list telepathy-kde-contact-runner telepathy-kde-desktop-applets telepathy-kde-filetransfer-handler telepathy-kde-send-file telepathy-kde-text-ui bin vim xorg-bdftopcf xorg-docs xorg-font-util xorg-fonts-100dpi xorg-fonts-75dpi xorg-iceauth xorg-mkfontscale xorg-server-devel xorg-server-xnest xorg-server-xvfb xorg-sessreg xorg-smproxy xorg-x11perf xorg-xbacklight xorg-xcmsdb xorg-xcursorgen xorg-xdriinfo xorg-xev xorg-xhost xorg-xinput xorg-xkbevd xorg-xkbutils xorg-xkill xorg-xlsatoms xorg-xlsclients xorg-xpr xorg-xrefresh xorg-xvinfo xorg-xwayland xorg-xwd xorg-xwud yakuake
#
sh -c "$(curl -fsSL https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh)"
git clone --bare https://github.com/abugger1/.cfg ~/.cfg
git clone https://github.com/ChristianChiarulli/nvim ~/.config/nvim
sudo pacman -S xsel pip
pip install pynvim
npm a -g neovim
fc-cache -fv
git clone https://github.com/abugger1/zsh ~/.config/zsh
cp ~/.config/zsh/.zshenv ~
#
 sudo systemctl enable sddm
 echo "do not forget ranger"
# /bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
# sleep 5
# reboot
