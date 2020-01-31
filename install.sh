#!/bin/sh

# Basic components
sudo apt-get -y install libc6-dev libc6-dbg
sudo apt-get -y install	libc6-i386 libc6-dev:i386 libc6-dbg:i386
sudo apt-get -y install python python-pip python-dev
pip install --user --upgrade pip

sudo apt-get -y install zsh
sudo apt-get -y install tmux
sudo apt-get -y install gdb

git submodule update --init --recursive

# ZSH
mv ~/.zshrc ~/.zshrc.bak
ln -s -f $HOME/.dotfiles/.zshrc ~/
ln -s -f $HOME/.dotfiles/.zshenv ~/
git clone https://github.com/zsh-users/zsh-autosuggestions ./oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ./oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# TMUX
ln -s -f $HOME/.dotfiles/tmux/.tmux.conf ~
ln -s -f $HOME/.dotfiles/.tmux.conf.local ~/

# VIM
# TBD: templates / ycm
sudo apt-get -y install fonts-powerline
ln -s -f $HOME/.dotfiles/.vimrc ~/
ln -s -f $HOME/.dotfiles/vim ~/.vim

# GIT
ln -s -f $HOME/.dotfiles/.gitconfig ~/

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

# QEMU
# DOCKER
