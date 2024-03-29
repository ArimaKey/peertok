# Instalamos ZSH
sudo ./separate-files/apt/installer.sh "zsh"

echo "[⚙️] Cambiando la terminal por defecto"
# Configuramos ZSH como SHELL por defecto
# sudo chsh -s $(which zsh) > /dev/null 2>&1
# chsh -s $(which zsh) > /dev/null 2>&1

# Instalamos ohmyZSH!
echo "[-] Instalando OhMyZSH!"
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > /dev/null 2>&1
# sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > /dev/null 2>&1
echo "[✓] OhMyZSH! se instaló correctamente"

echo "[⚙️] Cargando la configuración de ZSH"