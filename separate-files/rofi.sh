root_file="$HOME/.inst"

# Instalamos rofi
sudo apt -y install rofi

# Copiamos la configuración a la carpeta .config
cp -r ./.config/rofi ~/.config/

# Lo asignamos como archivo de configuración
rofi -dump-theme > ~/.config/rofi/current.rasi
