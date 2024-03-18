# Instalamos ZSH
sudo echo "zsh" | ./separate-files/installer.sh

# Configuramos ZSH como SHELL por defecto
sudo chsh -s $(which zsh)
chsh -s $(which zsh)

# Instalamos ohmyZSH!
echo "Instalando Oh my ZSH!"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > /dev/null 2>&1
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > /dev/null 2>&1
echo "Se instalo Oh my ZSH!"
