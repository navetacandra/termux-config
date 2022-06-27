# setup storage
termux-setup-storage

# update and upgrade default dependencies
pkg update -y
pkg upgrade -y

# install x11-repo
pkg install x11-repo -y

# install needed dependencies
  # text editor packages
  pkg install vim nano -y

  # language packages
  pkg install nodejs python python3 ruby -y

  # other packages
  pkg install zsh curl git gh proot-distro cowsay neofetch -y

# install dependencies from packages
gem install lolcat
npm install typescript ts-node eslint --global
proot-distro install ubuntu

# re-update and re-upgrade dependencies
pkg update -y
pkg upgrade -y

# writting config files
cp -rf ./config/bash-config $HOME/.bashrc
cp -rf ./config/nano-config $HOME/.nanorc
cp -rf ./config/vim $HOME/.vim
cp -rf ./config/vim-config $HOME/.vimrc

# writting termux config
cp -rf ./config/colors_properties $HOME/.termux/colors.properties
cp -rf ./config/font $HOME/.termux/font.ttf

# remove default print on start
cd ~/../usr/etc
rm -rf motd

# set current directory to HOME
cd $HOME

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install zsh custom plugins
  # command highlight
    # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
  # auto suggestion
    # git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions


# import bashrc to zshrc
# echo "source ~/.bashrc" >> $HOME/.zshrc
