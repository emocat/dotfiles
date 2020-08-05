#!/bin/sh

# Basic components
sudo dpkg --add-architecture i386
sudo apt-get -y install build-essential make cmake curl wget
sudo apt-get -y install libc6-dev libc6-dbg
sudo apt-get -y install	libc6-i386 libc6-dev:i386 libc6-dbg:i386
sudo apt-get -y install python python-pip python-dev
sudo apt-get -y install python3 python3-pip python3-dev

pip install --user --upgrade pip
pip install --user setuptools

sudo apt-get -y install zsh
sudo apt-get -y install tmux
sudo apt-get -y install gdb

# ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
cp $HOME/.dotfiles/.zshrc ~/
cp $HOME/.dotfiles/.zprofile ~/
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# TMUX
git clone https://github.com/gpakosz/.tmux.git $HOME/.tmux
ln -s -f $HOME/.tmux/.tmux.conf ~/
cp $HOME/.dotfiles/.tmux.conf.local ~/

# VIM
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp $HOME/.dotfiles/.vimrc ~/

# PWNTOOLS
pip install pwntools --user
sudo apt-get -y install ruby-dev
sudo gem install one_gadget
sudo gem install seccomp-tools

# GDB
git clone https://github.com/pwndbg/pwndbg ~/.pwndbg
(cd ~/.pwndbg; ./setup.sh --user)
git clone https://github.com/scwuaptx/Pwngdb.git ~/.Pwngdb
cp $HOME/.dotfiles/.gdbinit ~/

