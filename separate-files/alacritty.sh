#! /bin/bash
root_file="~/.inst"

mkdir root_file

# Librerias para Alacritty
sudo apt -y install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
# libegl1-mesa-dev en caso de usar nvidia

# Instalamos RUSTUP
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Post instalacion
rustup override set stable
rustup update stable

# Clonamos Alacritty
git -C $root_file clone https://github.com/alacritty/alacritty.git

# Instalamos Alacritty
cargo build --release "$root_file/alacritty/alacritty"

# Ejecutamos
infocmp alacritty

if [ $? -ne 0 ]; then
    sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
fi

# Agregamos Alacritty al escritorio
sudo cp $root_file/alacritty/target/release/alacritty /usr/local/bin
sudo cp $root_file/alacritty/extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install $root_file/alacritty/extra/linux/Alacritty.desktop
sudo update-desktop-database

# Cargamos la configuración de Alacritty
cp -r ./.config/alacritty $HOME/.config/alacritty

