#!/bin/bash

ln -sf /usr/share/zoneinfo/US/Eastern /etc/localtime
hwclock --systohc
sed -i '171s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts
echo root:password | chpasswd
# Install chaoticAUR and mirrorlist
 pacman -S archlinux-keyring
 pacman-key --init
 pacman-key --populate
 pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
 pacman-key --lsign-key 3056513887B78AEB
 pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
 cp /Arch-Install-sshep/pacman.conf /etc/pacman.conf
 cp /Arch-Istall-sshep/makepkg.conf /etc/makepkg.conf
#
# Updating mirrorlist
 pacman -Sy reflector
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
# INSTALL SCRIPT FOR ARCH PROGRAMS I USE
#
#
 pacman -Syy lazygit github-cli efibootmgr networkmanager network-manager-applet dialog wpa_supplicant \
  mtools dosfstools base-devel xdg-utils gvfs gvfs-smb nfs-utils inetutils bluez bluez-utils \
  alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion openssh rsync \
  acpi acpi_call tlp edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat \
  iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid ntfs-3g btrfs-progs
#
# pacman -S --noconfirm xf86-video-intel
# pacman -S --noconfirm xf86-video-amdgpu
# sudo pacman -S --needed nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader opencl-nvidia
# pacman -S grub os-prober  
# grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB #change the directory to /boot/efi if you mounted the EFI partition at /boot/efi
# grub-mkconfig -o /boot/grub/grub.cfg
#
#
 systemctl enable NetworkManager
 systemctl enable bluetooth
 systemctl enable sshd
 systemctl enable tlp # You can comment this command out if you didn't install tlp, see above
 systemctl enable fstrim.timer
 systemctl enable libvirtd
 systemctl enable firewalld
 systemctl enable acpid
#
 useradd -m sshep
 echo sshep:password | chpasswd
# usermod -aG libvirt "sshep"
# usermod -aG libvirt-qemu "sshep"
# usermod -aG docker "sshep"
#
 echo "sshep ALL=(ALL) ALL" >> /etc/sudoers.d/sshep
#
#
