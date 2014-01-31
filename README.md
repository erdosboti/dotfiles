clone the repo to ~/dotfiles
for each needed file first backup the original, like
  mv ~/.bashrc ~/.bashrc_old
then create symlink for it, like
  ln -s ~/dotfiles/vimrc ~/.vimrc
