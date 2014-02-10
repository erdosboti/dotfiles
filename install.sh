#!/bin/bash
for i in $(ls); do
  if [ $i != install.sh ] && [ $i != README.md ] && [ $i != bashrc ]; then
    echo "Creating symbolic link for $i"
    if [ ! -f ~/.${i} ]; then
      ln -s ~/dotfiles/${i} ~/.${i}
      echo "done"
    else
      echo ".$i already exists"
    fi
  fi
done
