# dotfiles

My private terminal settings.

## Install

```bash
git clone https://github.com/emocat/dotfiles ~/.dotfiles
cd ~/.dotfiles && ./install.sh
```

## Vim

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp $HOME/.dotfiles/vimrc ~/.vimrc
vim -c "PlugInstall"
```

You may need to use **network scientificalliy** to download some plugins.
