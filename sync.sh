#!/bin/bash

# Sync local configs to the git repo

CONFIG=$HOME/.config

##
echo [ ] i3
cp -r ~/.config/i3/ ./config/

echo [ ] i3status
cp -r ~/.config/i3status/ ./config/

echo [ ] alacritty
cp -r ~/.config/alacritty/ ./config/

echo [ ] Tmux
mkdir -p ./config/tmux
cp -r ~/.config/tmux/tmux.conf ./config/tmux/

echo [ ] Rofi
cp -r ~/.config/rofi/ ./config/

echo [ ] Yazi
cp -r ~/.config/yazi/ ./config/

echo [ ] Wexterm
cp -r ~/.config/wezterm/ ./config/

echo [ ] Polybar
cp -r ~/.config/polybar/ ./config/

echo [ ] sxhkd
cp -r ~/.config/sxhkd/ ./config/

echo [ ] picom
cp -r ~/.config/picom/ ./config/

echo [ ] dunst
cp -r ~/.config/dunst/ ./config/

echo [ ] bspwm
cp -r ~/.config/bspwm/ ./config/

