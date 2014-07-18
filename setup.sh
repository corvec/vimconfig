#!/usr/bin/env bash

cp --backup=numbered --force ~/.vimrc ~/.vimrc
cd `dirname "$0"`
CWD=`pwd`
echo "so $CWD/main.vim" > ~/.vimrc

git submodule init
git submodule update

echo "Enter your Simplenote username, followed by [ENTER]:"
read SN_USER
echo "Enter your Simplenote password, followed by [ENTER]:"
read SN_PASS

echo "let g:SimplenoteUsername = \"$SN_USER\"" > init/simplenote.vim
echo "let g:SimplenotePassword = \"$SN_PASS\"" >> init/simplenote.vim
