# Update dependencies
apt upgrade -y
apt update -y

# Update Repo
pkg install x11-repo

# Install all dependencies
apt install curl vim nano git gh ruby proot-distro cowsay -y

# Update dependencies
apt upgrade -y
apt update -y

gem install lolcat
proot-distro install ubuntu

# Reset style
cd ~/../usr/etc
rm -rf motd

# Write .bashrc
echo "alias cls='clear'" >> ~/.bashrc
echo "alias ubuntu='proot-distro login ubuntu'" >> ~/.bashrc
echo "datetime=\`date\`" >> ~/.bashrc
echo "cowsay -f eyes \"Welcome\" | lolcat" >> ~/.bashrc
echo "echo && echo" >> ~/.bashrc
echo "echo \"Date: \$datetime\" | lolcat" >> ~/.bashrc

# Install custom style
cd ~
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
echo "source /data/data/com.termux/files/home/.bashrc" >> ~/.zshrc
git clone https://github.com/navetacandra/vim-config
cd vim-config
sh ./setup.sh
cd ~
rm -rf vim-config termux-ohmyzsh
