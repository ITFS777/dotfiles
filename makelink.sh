#!/bin/zsh

function mklnk(){
	if [[ -e $HOME/.$1 ]]; then
		mv $HOME/.$1 $HOME/.$1.bak
	fi
	ln -s $HOME/dotfiles/$1 $HOME/.$1
}


mklnk gitconfig
mklnk npmrc
mklnk pip
mklnk vim
mklnk vimrc
mklnk zshrc
mklnk gdbinit

if [[ ! -e $HOME/.vimdir ]]; then
	mkdir $HOME/.vimdir
	mkdir $HOME/.vimdir/swp
	mkdir $HOME/.vimdir/bak
	mkdir $HOME/.vimdir/undo
fi

source $HOME/.zshrc
p10k configure
