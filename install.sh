#!/bin/bash
for i in $(ls); do
  if [ $i != install.sh ] && [ $i != README.md ]; then
    echo "Creating symbolic link for $i"
    if [ ! -L ~/.${i} ]; then
      mv ~/.${i} ~/.${i}_old
      ln -s ~/dotfiles/${i} ~/.${i}
      echo "done"
    else
      echo ".$i already exists"
    fi
  fi
done
