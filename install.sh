#!/bin/sh

mkdir -p ~/.config/nvim/autoload
mkdir -p ~/.config/git/

cp ./bashrc ~/.bashrc
cp ./inputrc ~/.inputrc
cp ./screenrc ~/.screenrc
cp ./gitconfig ~/.config/git/config
cp ./gitignore ~/.config/git/ignore
cp -R ./init.vim ~/.config/nvim

# neovim autoload
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# powerline fonts
mkdir -p ~/.fonts/
mkdir -p ~/.config/fontconfig/fonts.conf
wget https://raw.githubusercontent.com/Lokaltog/powerline-fonts/master/SourceCodePro/Sauce%20Code%20Powerline%20Regular.otf -O ~/.fonts/Sauce%20Code%20Powerline%20Regular.otf
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf -O ~/.fonts/PowerlineSymbols.otf
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf -O ~/.config/fontconfig/fonts.conf/10-powerline-symbols.conf


sudo fc-cache -v