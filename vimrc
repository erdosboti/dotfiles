" plugins I use -------------------------------
" pathogen
" rails.vim
" vim-airline
" nerdtree
" nerdcommenter
" fugitive
" ctrlp
" indentline
"----------------------------------------------

" pathogen plugin -------------------------------------------------------
" for pathogen
execute pathogen#infect()
"------------------------------------------------------------------------


" vim-airline plugin ----------------------------------------------------
" statusline always visible
set laststatus=2

" 256 color using in gnome terminal
" export TERM="xterm-256color" to .bashrc needed
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" for special characters
" have to use fontconfig see https://powerline.readthedocs.org/en/latest/installation/linux.html#font-installation
" .fonts/ directory currently is /usr/share/fonts/ and conf.d/ is /etc/fonts/conf.d/
" export LC_ALL=en_US.UTF8 and export LANG=en_US.UTF8
let g:airline_powerline_fonts = 1 
set encoding=utf-8
"------------------------------------------------------------------------

" syntax highlighting
syntax on

" filetype recognition
filetype plugin indent on

" linenumbers on
set nu

" for searching: instant search and highlighting
set incsearch
set hlsearch

" do not wrap lines
set nowrap

" insert spaces instead of tabs and use 2 spaces for tabs
set tabstop=2
set shiftwidth=2
set expandtab

" remap leader
let mapleader=","

" color scheme
colorscheme railscasts_256
