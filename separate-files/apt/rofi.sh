root_file="$HOME/.inst"

# Instalamos rofi
sudo ./separate-files/apt/installer.sh "rofi"

# Copiamos la configuración a la carpeta .config
mkdir -p $HOME/.config/rofi > /dev/null 2>&1
rm -f $HOME/.config/rofi/config > /dev/null 2>&1
rm -f $HOME/.config/rofi/config.rasi > /dev/null 2>&1
cp -p -r ./.config/rofi/dark.rasi $HOME/.config/rofi/config.rasi > /dev/null 2>&1

# Lo asignamos como archivo de configuración
rofi -dump-theme > $HOME/.config/rofi/config.rasi > /dev/null 2>&1
