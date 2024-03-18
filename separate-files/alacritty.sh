#! /bin/bash
root_file="~/.inst"

mkdir root_file

# Librerias para Alacritty
sudo ./separate-files/installer.sh "cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3"

# libegl1-mesa-dev en caso de usar nvidia

# Instalamos RUSTUP
echo "[-] Instalando Rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y > /dev/null 2>&1

# Post instalacion
rustup override set stable
rustup update stable

# Clonamos Alacritty
echo "[↓] Clonando Alacritty"
git -C $root_file clone https://github.com/alacritty/alacritty.git > /dev/null 2>&1

echo "[🔨] Building Alacritty"
# Instalamos Alacritty
cargo build --release "$root_file/alacritty/alacritty" > /dev/null 2>&1

# Ejecutamos
echo "[°] Revisando Instalacion"
infocmp alacritty > /dev/null 2>&1

if [ $? -ne 0 ]; then
    echo "[!] Solucionando problemas"
    sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
fi

echo "[+] Agregando Alacritty al escritorio"
# Agregamos Alacritty al escritorio
sudo cp $root_file/alacritty/target/release/alacritty /usr/local/bin > /dev/null 2>&1
sudo cp $root_file/alacritty/extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg > /dev/null 2>&1
sudo desktop-file-install $root_file/alacritty/extra/linux/Alacritty.desktop > /dev/null 2>&1
sudo update-desktop-database > /dev/null 2>&1

echo "[⚙️] Cargando la configuración de alacritty"

# Cargamos la configuración de Alacritty
cp -r ./.config/alacritty $HOME/.config/alacritty 2>&1