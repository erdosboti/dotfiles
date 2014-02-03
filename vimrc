" plugins I use -------------------------------
"
" pathogen ==========================================================================================
" 
" mkdir -p ~/.vim/autoload ~/.vim/bundle; \
" curl -Sso ~/.vim/autoload/pathogen.vim \
"     https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" ===================================================================================================
"
" ########## as git submodules ######################################################################
" see http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
" and http://www.nils-haldenwang.de/frameworks-and-tools/git/how-to-ignore-changes-in-git-submodules
" ===================================================================================================
" 
" rails.vim
" vim-airline
" nerdtree
" nerdcommenter
" fugitive
" ctrlp
" indentline
" ack.vim needs sudo apt-get install ack-grep and for settings .ackrc file
" vim-coffee-script
" vim-cucumber
" delimitMate
" scss-syntax
" ###################################################################################################
"
" ctags not a plugin needs sudo apt-get install exuberant-ctags
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

" lower timeout when leaving insert mode
set ttimeoutlen=50
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
" search: case only matters with mixed case expressions
set ignorecase
set smartcase

" do not wrap lines
set nowrap

" insert spaces instead of tabs and use 2 spaces for tabs
set tabstop=2
set shiftwidth=2
set expandtab

" color scheme
colorscheme railscasts_256

" show command characters under status line
set showcmd

" dash completion for css keywords
set iskeyword +=-

" eol characters and tabs to be shown ':set list' to show and ':set nolist' to hide
set listchars=tab:▸\ ,eol:¬

" set proper filetypes on new files and open files
autocmd BufRead,BufNewFile *.haml set ft=haml
"autocmd BufRead,BufNewFile *.scss set ft=scss.css
"autocmd BufRead,BufNewFile *.sass set ft=sass.css

" remap leader
let mapleader=","

" leader a to ack for word under cursor
noremap <Leader>a :Ack <cword><cr>
