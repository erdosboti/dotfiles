set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'othree/html5.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'slim-template/vim-slim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'erdosboti/myvimcolors'
Plugin 'ervandew/supertab'
call vundle#end()

" filetype recognition
filetype plugin indent on    " required

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

" use silver_searcher instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$\|$\.png$\|\.PNG$\|\.jpg$\|\.JPG$\|\.gif$\|\.GIF$'
  \ }

" syntax highlighting
syntax on

" syntax based completion is on
set completefunc=syntaxcomplete#Complete

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

" set backup dir
set backupdir=/tmp
set directory=/tmp

" color scheme
colorscheme railscasts_256

" show command characters under status line
set showcmd

" try to figure out file type from first 5 comment line
set modeline
set modelines=5

" dash completion for css keywords
set iskeyword +=-

" eol characters and tabs to be shown ':set list' to show and ':set nolist' to hide
set listchars=tab:▸\ ,eol:¬

" set proper filetypes on new files and open files
autocmd BufRead,BufNewFile *.haml set ft=haml
"autocmd BufRead,BufNewFile *.scss set ft=scss.css
"autocmd BufRead,BufNewFile *.sass set ft=sass.css

" remove trailing whitespaces in ruby files on saving 
autocmd BufWritePre *.rb :%s/\s\+$//e

" remap leader
let mapleader=","

" leader a to ack for word under cursor
noremap <Leader>a :Ack <cword><cr>

" remapping esc key
"inoremap jj <esc>
"cnoremap jj <c-c>
"vnoremap v <esc>

noremap <Leader>af :Ack ""<left>
noremap <Leader>gs :Gstatus<cr>
noremap <Leader>gd :Gdiff<cr>
noremap <Leader>gc :Gcommit<cr>
noremap <Leader>gb :Gblame<cr>
noremap <Leader>bb :!bundle install<cr>
noremap <Leader>rr :Rake routes<cr>
noremap <Leader>nt :NERDTreeToggle<cr>
noremap <Leader>r :Rake<cr>
noremap <Leader>r. :.Rake<cr>
noremap <Leader>rt :Rake test<cr>

"move around
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

inoremap <C-L> <Space>=><Space>
