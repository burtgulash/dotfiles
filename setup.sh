#!/bin/bash

cd $HOME

if [ ! -d ./dotfiles/ ]; then
    git clone https://github.com/burtgulash/dotfiles
fi

link() {
    echo "Linking dotfile $1"
    ln -sb "$HOME/dotfiles/$1" .
}

mkdir -p $HOME/.config/nvim

link .config/nvim/init.vim
link .i3
link .xinitrc
link .zlogin
link .zshrc
link .vimrc
link .gitconfig
link .hgrc
link .conkyrc
link .bashrc
link .bash_profile
link .inputrc

mkdir -p $HOME/.local/bin

pushd .
cd $HOME/dotfiles/.local/bin
echo "Link .local/bin scripts"
for f in *; do
    echo "Linking script $f"
    ln -sf "$HOME/dotfiles/.local/bin/$f" "$HOME/.local/bin"
done
popd
#
## Install Vundle
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
