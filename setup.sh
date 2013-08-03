#!/bin/bash

dir=~/dotfiles
files=(vim vimrc)

cd $dir
for file in ${files[@]}; do
 rm -rf ~/.$file
 echo "Creating symlink for $file"
 ln -s $dir/$file ~/.$file
done
