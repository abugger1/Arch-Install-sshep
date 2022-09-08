#!/bin/bash

# INSTALL SCRIPT FOR ARCH PROGRAMS I USE
# Updating repos, system and mirrors

reflector --country 'United States' --latest 20 --protocol https --sort rate --save /etcpacman.d/mirrorlist

# git clone https://aur.archlinux.org/pikaur.git
# cd pikaur/
# makepkg -si --noconfirm


pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
pacman-key --lsign-key FBA220DFC880C036
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

pacman -Syu github-cli  grub efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools base-devel linux-headers-zen avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups hplip alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call tlp virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g timeshift-bin timeshift-autosnap


# pacman -S --noconfirm xf86-video-amdgpu
# pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB #change the directory to /boot/efi if you mounted the EFI partition at /boot/efi

grub-mkconfig -o /boot/grub/grub.cfg

mkinitcpio -p linux-zen

systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable cups.service
systemctl enable sshd
systemctl enable avahi-daemon
systemctl enable tlp # You can comment this command out if you didn't install tlp, see above
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable libvirtd
systemctl enable firewalld
systemctl enable acpid

useradd -m sshep
echo sshep:password | chpasswd
# usermod -aG libvirt "USER"

echo "sshep ALL=(ALL) ALL" >> /etc/sudoers.d/sshep


printf "\e[1;32mDone! Type exit, umount /mnt -R and reboot.\e[0m"
