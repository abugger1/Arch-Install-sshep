#!/bin/bash

ln -sf /usr/share/zoneinfo/US/Eastern /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts
echo root:password | chpasswd
# INSTALL SCRIPT FOR ARCH PROGRAMS I USE
# Updating mirrorlist
#
 reflector --country 'United States' --latest 20 --protocol https --sort rate --save /etcpacman.d/mirrorlist
#
# Install Ucode
#
# pacman -S --noconfirm amd-ucode
# pacman -S --noconfirm intel-ucode
#
#
#
#
#
#
#
#
# Install chaoticAUR and mirrorlist
 pacman -S archlinux-keyring
 pacman-key --init
 pacman-key --populate
 pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
 pacman-key --lsign-key FBA220DFC880C036
 pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
 cp /arch-install-sshep/pacman.conf /etc/pacman.conf
 cp /arch-install-sshep/makepkg.conf /etc/makepkg.conf
#
#
 pacman -Syy github-cli efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools base-devel linux-zen-headers avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups hplip alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call tlp virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g
# pacman -S grub   
#
# pacman -S --noconfirm xf86-video-intel
# pacman -S --noconfirm xf86-video-amdgpu
# pacman -S --noconfirm nvidia nvidia-utils nvidia-settings
#
#
# grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB #change the directory to /boot/efi if you mounted the EFI partition at /boot/efi
#
# grub-mkconfig -o /boot/grub/grub.cfg
#
#
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
#
 useradd -m sshep
 echo sshep:password | chpasswd
# usermod -aG libvirt "USER"
#
 echo "sshep ALL=(ALL) ALL" >> /etc/sudoers.d/sshep
#
#
 printf "\e[1;32mDone! Type exit, umount /mnt -R and reboot.\e[0m"
