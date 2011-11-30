#!/bin/sh

cp ./bashrc ~/.bashrc
cp ./inputrc ~/.inputrc
cp ./screenrc ~/.screenrc
cp ./vimrc ~/.vimrc
cp ./gitconfig ~/.gitconfig
cp ./gitignore ~/.gitignore
cp -R ./vim ~/.vim

mkdir -p ~/.vim/backup

echo "need to be super user to copy astyle git pre-commit hook"
sudo cp ./pre-commit /usr/share/git-core/templates/hooks/
sudo chmod +x /usr/share/git-core/templates/hooks/pre-commit

