root_file="$HOME/.inst"

# Instalamos rofi
sudo ./separate-files/installer.sh "rofi"

# Copiamos la configuración a la carpeta .config
cp .config/rofi/dark.rasi $HOME/.config/rofi/config.rasi

# Lo asignamos como archivo de configuración
rofi -dump-theme > $HOME/.config/rofi/config.rasi
