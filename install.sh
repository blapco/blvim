#!/usr/bin/env bash

cat << EOF
.  .          
|_ |.  ,.._ _ 
[_)| \/ |[ | )
                             
BLAPCO's vim bundle.

- https://blapco.xyz
- https://git.blapco.xyz/blvim

EOF

echo "Installing blvim..."

cd ~

if [ ! -d ".blvim" ]; then
	echo "Cloning blvim into ~/.blvim"
	git clone https://git.blapco.xyz/blvim ~/.blvim
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

echo "Installing Vim-Plug."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ ! -f ".bash_aliases" ]; then
	touch ~/.bash_aliases
	echo "alias blvim=vim" >> ~/.bash_aliases
fi

echo "Installing plugins!"

vim +'PlugInstall --sync' +qa

if [ ! -f ".bash_aliases" ]; then
	touch .bash_aliases
	echo "alias blvim=vim" >> .bash_aliases
else
	echo "alias blvim=vim" > .bash_aliases
fi

echo "Finished!"
