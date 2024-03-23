#! /bin/bash
root_file="$HOME/.inst"

mkdir $root_file

# Librerias para Alacritty
sudo ./separate-files/pacman/installer.sh "alacritty"

# Cargamos la configuración de Alacritty
echo "[⚙️] Cargando la configuración de alacritty"
cp -r ./.config/alacritty $HOME/.config/alacritty > /dev/null 2>&1