root_file="$HOME/.inst"

# Instalamos rofi
sudo ./separate-files/installer.sh "rofi"

# Copiamos la configuración a la carpeta .config
cp -r ./.config/rofi/dark.rasi $HOME/.config/config.rasi

# Lo asignamos como archivo de configuración
rofi -dump-theme > $HOME/.config/rofi/config.rasi
