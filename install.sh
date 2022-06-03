# setup storage
termux-setup-storage

# update and upgrade default dependencies
apt update -y
apt upgrade -y

# install x11-repo
pkg install x11-repo -y

# install needed dependencies
  # text editor packages
  apt install vim nano -y

  # language packages
  apt install nodejs python python3 ruby -y

  # other packages
  apt install curl git gh proot-distro cowsay neofetch -y

# install dependencies from packages
gem install lolcat
npm install -g typescript prettier eslint
proot-distro install ubuntu

# re-update and re-upgrade dependencies
apt update -y
apt upgrade -y

# remove default print on start
cd ~/../usr/etc
rm -rf motd

# writting config files
cp -rf ./config/bash-config $HOME/.bashrc
cp -rf ./config/nano-config $HOME/.nanorc
cp -rf ./config/vim $HOME/.vim
cp -rf ./config/vim-config $HOME/.vimrc

# writting termux config
cp -rf ./config/colors_properties $HOME/.termux/colors.properties
cp -rf ./config/font $HOME/.termux/font.ttf

# set current directory to HOME
cd $HOME