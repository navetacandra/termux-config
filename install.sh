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
  pkg install curl git gh proot-distro cowsay neofetch -y

# install dependencies from packages
gem install lolcat
npm install typescript eslint --global
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
