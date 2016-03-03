my dot files...

# neo vim install on ubuntu

https://github.com/neovim/neovim/wiki/Installing-Neovim

`
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
`

`
sudo apt-get install python-dev python-pip python3-dev python3-pip
`

`
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor
`

# install instructions

`
./install.sh
`

# vim plugin instructions

`
:PlugInstall
`

