# Installation Guide

This guide installs all dependencies and configures the Hyprland environment used in this repository.

> **OS:** Arch Linux (or an Arch-based distribution)

---

# 1. Update the system

```bash
sudo pacman -Syu
```

---

# 2. Install Official Packages

```bash
sudo pacman -S \
hyprland \
hyprpaper \
hyprlock \
hypridle \
waybar \
ghostty \
grim \
slurp \
wl-clipboard \
playerctl \
wireplumber \
pipewire \
pipewire-pulse \
pavucontrol \
networkmanager \
network-manager-applet \
bluez \
bluez-utils \
blueman \
brightnessctl \
noto-fonts \
noto-fonts-extra \
ttf-jetbrains-mono-nerd \
ttf-font-awesome \
xdg-desktop-portal-hyprland \
xdg-desktop-portal-gtk \
polkit-gnome \
kitty \
loupe \
fastfetch \
git \
bash
```

---

# 3. Install AUR Packages

Using **yay**:

```bash
yay -S \
wallust \
hyprshot
```

---

# 4. Clone the Repository

```bash
git clone https://github.com/sharmasuyash224-source/hyprland-dotfiles.git

cd hyprland-dotfiles
```

---

# 5. Copy Configuration Files

```bash
mkdir -p ~/.config

cp -r hypr ~/.config/
cp -r waybar ~/.config/
cp -r ghostty ~/.config/

cp hyprlock.conf ~/.config/
cp hypridle.conf ~/.config/
```

If your repository contains additional configuration directories (such as `eww`), copy them as well:

```bash
cp -r eww ~/.config/
```

---

# 6. Enable Required Services

Bluetooth:

```bash
sudo systemctl enable --now bluetooth
```

NetworkManager:

```bash
sudo systemctl enable --now NetworkManager
```

---

# 7. Reload Hyprland

```bash
hyprctl reload
```

or simply log out and log back in.

---

# 8. Fonts

This configuration expects:

- JetBrainsMono Nerd Font
- Noto Fonts
- Noto Sans Devanagari

These are installed in Step 2.

---

# 9. Wallpapers

Create a wallpaper directory:

```bash
mkdir -p ~/Images/w
```

Copy your wallpapers there.

If you use a different directory, update the wallpaper script accordingly.

---

# 10. Optional Packages

These are not required but integrate well with the setup.

```bash
sudo pacman -S \
btop \
eza \
bat \
fzf \
zoxide
```

---

# 11. Repository Structure

```
hypr/
waybar/
ghostty/
hyprlock.conf
hypridle.conf
eww/ (optional)
wallpaper scripts
```

---

# 12. Notes

This setup includes:

- Hyprland
- Waybar
- Ghostty
- Hyprpaper
- Hyprlock
- Hypridle
- Wallust
- Hyprshot
- Glassmorphism theme
- Wallpaper randomizer
- Media widget
- Catppuccin Mocha styling

---

# Troubleshooting

Reload Hyprland:

```bash
hyprctl reload
```

Restart Waybar:

```bash
pkill waybar
waybar &
```

Restart Hyprpaper:

```bash
pkill hyprpaper
hyprpaper &
```

Check Hyprland version:

```bash
hyprctl version
```

List plugins:

```bash
hyprctl plugins list
```
