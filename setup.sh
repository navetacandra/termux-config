# Update Repo
pkg install x11-repo

# Update dependencies
apt upgrade -y
apt update -y

# Install all dependencies
apt install curl vim nano git gh python ruby nodejs-lts proot-distro cowsay -y
gem install lolcat
proot-distro install ubuntu

# Reset style
cd ~/../usr/etc
rm -rf motd

# Write .bashrc
echo "\nalias cls='clear'" >> bash.bashrc
echo "alias ubuntu='proot-distro login ubuntu'" >> bash.bashrc
echo "datetime=\`date\`" >> bash.bsshrc
echo "cowsay -f eyes \"Welcome\" | lolcat" >> bash.bashrc
echo "echo && echo" >> bash.bashrc
echo "echo \"Date: \$datetime\" | lolcat" >> bash.bashrc

# Install custom style
cd ~
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
