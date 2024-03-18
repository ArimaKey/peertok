# Instalamos ZSH
sudo echo "zsh" | ./installer.sh

# Configuramos ZSH como SHELL por defecto
sudo chsh -s $(which zsh)
chsh -s $(which zsh)

# Instalamos ohmyZSH!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > /dev/null 2>&1
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > /dev/null 2>&1
