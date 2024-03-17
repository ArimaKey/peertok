# Instalamos ZSH
sudo apt -y install zsh

# Configuramos ZSH como SHELL por defecto
sudo chsh -s $(which zsh)
chsh -s $(which zsh)

# Instalamos ohmyZSH!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
