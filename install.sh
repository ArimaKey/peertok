#! /bin/bash
root_file="~/.inst"
    

# Librerias para Alacritty
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
# libegl1-mesa-dev en caso de usar nvidia

# Instalamos RUSTUP
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Post instalacion
rustup override set stable
rustup update stable

# Ejecutamos
infocmp alacritty

# Si falla ejecutamos
# sudo tic -xe alacritty,alacritty-direct extra/alacritty.info

# Clonamos Alacritty
git clone https://github.com/alacritty/alacritty.git

# Instalamos Alacritty
cargo build --release "$root_file/alacritty/alacritty"

# Agregamos Alacritty al escritorio
sudo cp $root_file/alacritty/target/release/alacritty /usr/local/bin
sudo cp $root_file/alacritty/extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install $root_file/alacritty/extra/linux/Alacritty.desktop
sudo update-desktop-database


# Instalamos ZSH
sudo apt install zsh

# Configuramos ZSH como SHELL por defecto
sudo chsh -s $(which zsh)
chsh -s $(which zsh)
# Instalamos ohmyZSH!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


$HOME/.config/alacritty/alacritty.toml
