#!/usr/bin/env bash

cd sparkup
git pull origin master
rm -rf ../bundle/sparkup.vim
mkdir ../bundle/sparkup.vim
cp -R vim/ftplugin ../bundle/sparkup.vim/
cp sparkup.py ../bundle/sparkup.vim/
cp README.md ../bundle/sparkup.vim/
mkdir ../bundle/sparkup.vim/doc
cp ../bundle.old/vim-sparkup/doc/sparkup.txt ../bundle/sparkup.vim/doc/
