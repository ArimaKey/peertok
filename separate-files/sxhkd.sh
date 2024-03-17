root_file="$HOME/.inst"

# Instalamos sxhkd
sudo apt -y install sxhkd

# Creamos las carpeta de configuración de sxhkd
mkdir -p ~/.config/sxhkd

# Copiamos la configuración de sxhkd
cp -r ./.config/sxhkd ~/.config/


# Instalamos bspwm
sudo apt -y install bspwm

# Creamos la carpeta de configación de bspwm
mkdir -p ~/.config/bspwm

# Copiamos las configuraciones para bspwm y le damos permisos de ejecución
cp -r ./.config/bspwm ~/.config/
chmod +x ~/.config/bspwm/bspwmrc

# Instalamos rofi
sudo apt -y install rofi

# instalamos la polybar
sudo apt -y install polybar

# Carpeta de Configuración del polybar
mkdir -p ~/.config/polybar/

# Copiar la configuracion para la polybar
cp -r ./.config/polybar ~/.config/
chmod +x $HOME/.config/polybar/launch.sh

# Instalamos feh
sudo apt -y install feh

# Creamos una carpeta para los fondos de pantalla
mkdir $root_file//wallpapers/

# Movemos el fondo a la carpeta destino
cp ./resources/wallpaper.jpg $root_file//wallpapers/


sudo apt -y install libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-dpms0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev libxext-dev meson ninja-build uthash-dev
sudo apt -y install libpcre3 libpcre3-dev

# Clonar el repositorio de GitHub en el directorio base
git -C "$root_file" clone https://github.com/ibhagwan/picom.git

# Actualizar los submódulos
git -C "$root_file/picom" submodule update --init --recursive --jobs 8

# Crear un directorio de construcción separado
build_dir="$root_file/picom/build"

# Configurar y compilar picom
meson --buildtype=release -Dprefix=/usr/local "$build_dir" "$root_file/picom"
ninja -C "$build_dir" -j $(nproc)

# Instalar picom
sudo ninja -C "$build_dir" install
