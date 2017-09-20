" PLUGINS start
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'rking/ag.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rust-lang/rust.vim'
Plugin 'zah/nim.vim'
Plugin 'idris-hackers/idris-vim'
Plugin 'dleonard0/pony-vim-syntax'
Plugin 'vim-scripts/haskell.vim'
Plugin 'hylang/vim-hy'
Plugin 'ElmCast/elm-vim'
Plugin 'raichoo/purescript-vim'
Plugin 'vmuriart/jq.vim'
"Plugin 'klen/python-mode'

call vundle#end()            " required
filetype plugin indent off    " required
"PLUGINS END

set showcmd		" Show (partial) command in status line.
set showmatch	" Show matching brackets.
set hlsearch!
set hidden
set smartindent
set tabstop=4   " tab == 4 spaces
set shiftwidth=4
set expandtab
set viminfo=
set incsearch   " Highlight when searching
"set ignorecase
set smartcase
set scrolloff=10
set ruler
set laststatus=2
set backspace=indent

let mapleader = "\<Space>"
nnoremap <leader>t :%s/\s\s*$//g<CR>
nnoremap <leader><leader> V

" Upper case write-quitting
cabbr W w
cabbr Q q
cabbr X x

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType make setlocal ts=8 sw=8
autocmd BufRead,BufNewFile *.coco set filetype=python

set t_Co=256
let g:solarized_termcolors=256

syntax enable
set background=light
"set background=dark
colorscheme solarized
