#!/usr/bin/env bash

cat << EOF
.  .          
|_ |.  ,.._ _ 
[_)| \/ |[ | )
                             
Biel A. P. vim bundle.

- https://b-ap.xyz
- https://git.b-ap.xyz/blvim
EOF

echo "Installing blvim..."

cd ~

if [ ! -d ".blvim" ]; then
	echo "Cloning blvim into ~/.blvim"
	git clone https://git.b-ap.xyz/blvim ~/.blvim
else
	echo "Updating blvim configuration."
	git -C ~/.blvim pull
fi

if [ ! -d ".config" ]; then
	mkdir -p ~/.config
fi

echo "Soft-linking vim configuration."

ln -sfnv ~/.blvim ~/.vim
ln -sfnv ~/.blvim ~/.config/nvim
ln -sfnv ~/.blvim/vimrc  ~/.blvim/init.vim
ln -sfnv ~/.blvim/core/gui.vim ~/.blvim/ginit.vim

if [ ! -f ".blvim.vimrc" ]; then
	echo "Copied blvim configuration to ~/.blvim.vimrc"
	cp ~/.blvim/.blvim.vimrc ~/.blvim.vimrc
fi

echo "Installing Vim-Plug."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ ! -f ".bash_aliases" ]; then
	touch ~/.bash_aliases
	echo "alias blvim=vim" >> ~/.bash_aliases
fi

echo "Finished! Now, run, blvim and execute ':PlugInstall'!"