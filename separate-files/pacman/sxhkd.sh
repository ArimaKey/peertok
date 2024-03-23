root_file="$HOME/.inst"

# Instalamos sxhkd
sudo ./separate-files/pacman/installer.sh "sxhkd"

# Creamos las carpeta de configuración de sxhkd
mkdir -p $HOME/.config/sxhkd > /dev/null 2>&1
# Copiamos la configuración de sxhkd
cp -r ./.config/sxhkd $HOME/.config/ > /dev/null 2>&1


# Instalamos bspwm
sudo ./separate-files/pacman/installer.sh "bspwm"

# Creamos la carpeta de configación de bspwm
mkdir -p $HOME/.config/bspwm > /dev/null 2>&1

# Copiamos las configuraciones para bspwm y le damos permisos de ejecución
cp -r ./.config/bspwm $HOME/.config/
chmod +x $HOME/.config/bspwm/bspwmrc

# instalamos la polybar
sudo ./separate-files/pacman/installer.sh "polybar"

# Carpeta de Configuración del polybar
mkdir -p $HOME/.config/polybar/ > /dev/null 2>&1

# Copiar la configuracion para la polybar
cp -r ./.config/polybar $HOME/.config/
rm -f $HOME/.config/polybar/config
chmod +x $HOME/.config/polybar/launch.sh

# Instalamos feh
sudo ./separate-files/pacman/installer.sh "feh"

# Creamos una carpeta para los fondos de pantalla
mkdir $root_file/wallpapers/ > /dev/null 2>&1

# Movemos el fondo a la carpeta destino
cp ./resources/wallpaper.jpg $root_file/wallpapers/

# Instalando dependecias adicionales
sudo ./separate-files/pacman/installer.sh "picom"
