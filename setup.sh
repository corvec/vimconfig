#!/usr/bin/env bash

cp --backup=numbered --force ~/.vimrc ~/.vimrc
cd `dirname "$0"`
echo "exe 'set rtp+=$(pwd)'" > ~/.vimrc
echo "so $(pwd)/main.vim" >> ~/.vimrc

# setup for neovim
mkdir ~/.config/nvim
echo "so $(pwd)/main.vim" >> ~/init.vim

git submodule init
git submodule update

echo "NOTE: Entering your Simplenote credentials is entirely optional."
echo "WARNIN: If you do, your password will be stored in plaintext in init/simplenote.vim (which is untracked)"
echo "Enter your Simplenote username, followed by [ENTER]:"
read SN_USER
echo "Enter your Simplenote password, followed by [ENTER]:"
read SN_PASS

echo "let g:SimplenoteUsername = \"$SN_USER\"" > init/simplenote.vim
echo "let g:SimplenotePassword = \"$SN_PASS\"" >> init/simplenote.vim

echo "Installing neovim Python package (pynvim)"
if [ -x "$(which pip)" ]
then
	pip install pynvim
else
	echo "pip is not installed"
fi
if [ -x "$(which pip3)" ]
then
	pip3 install pynvim
else
	echo "pip3 is not installed"
fi

echo "Installing vim plugins."
vim +PluginInstall +qall

echo "Installing Fira Code Nerd Font"
git clone https://github.com/ryanoasis/nerd-fonts --no-checkout --filter=blob:none
cd nerd-fonts
git sparse-checkout init --cone
git sparse-checkout set patched-fonts/FiraCode
git checkout v2.3.3
./install.sh FiraCode
cd ..
rm -rf nerd-fonts

# Removed because we no longer use ternjs
# echo "Setting up ternjs"
# cd bundle/tern_for_vim
# npm install
# echo "If you didn't see any error messages, then ternjs should be set up properly."
