set showcmd		" Show (partial) command in status line.
set showmatch	" Show matching brackets.
set hidden
set smartindent
set tabstop=4   " tab == 4 spaces
set shiftwidth=4
set expandtab
set viminfo=
set incsearch   " Highlight when searching
set ignorecase
set smartcase
set scrolloff=10
set ruler
set laststatus=2
set backspace=indent

set t_Co=256
syntax on

" remove trailing characters macro
" NOTE:  = \<C-m> = Enter = Ctrl+v, Ctrl+m
let @t=':%s/\s\s*$//g'

" Upper case write-quitting
cabbr W w
cabbr Q q


autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType make setlocal ts=8 sw=8



" PLUGINS start
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'digitaltoad/vim-jade.git'
"Plugin 'vim-scripts/cmdalias.vim'
"Plugin 'klen/python-mode'
"Plugin 'scrooloose/syntastic'
"Plugin 'leafgarland/typescript-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"PLUGINS END


let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" unicode symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline theme
let g:airline_theme = 'luna'
" goimports
let g:go_fmt_command = "goimports"
