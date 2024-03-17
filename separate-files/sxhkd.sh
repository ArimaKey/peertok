# Instalamos sxhkd
sudo apt -y install sxhkd

# Creamos las carpeta de configuración de sxhkd
mkdir -p ~/.config/sxhkd

# Copiamos la configuración de sxhkd
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd


# Instalamos bspwm
sudo apt -y install bspwm

# Creamos la carpeta de configación de bspwm
mkdir -p ~/.config/bspwm

# Copiamos las configuraciones para bspwm y le damos permisos de ejecución
cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm
chmod +x ~/.config/bspwm/bspwmrc

# Instalamos rofi
sudo apt -y install rofi

# instalamos la polybar
sudo apt -y install polybar

# Carpeta de Configuración del polybar
mkdir -p ~/.config/polybar/

# Copiar la configuracion para la polybar
cp /usr/share/doc/polybar/examples/config.ini ~/.config/polybar
chmod +x $HOME/.config/polybar/launch.sh
