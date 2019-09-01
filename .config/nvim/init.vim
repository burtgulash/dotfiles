call plug#begin('"~/.local/share/nvim/plugged')
"Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-sensible'
call plug#end()

set showcmd             " Show (partial) command in status line.
set showmatch   " Show matching brackets.
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

syntax enable
