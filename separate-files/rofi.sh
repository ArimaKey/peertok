root_file="$HOME/.inst"

# Instalamos rofi
sudo ./separate-files/installer.sh "rofi"

# Copiamos la configuración a la carpeta .config
cp -r ./.config/rofi $HOME/.config/

# Lo asignamos como archivo de configuración
rofi -dump-theme > $HOME/.config/rofi/dark.rasi
