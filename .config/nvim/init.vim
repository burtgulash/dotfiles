set showcmd     " Show (partial) command in status line.
set showmatch   " Show matching brackets.
set hlsearch!
set hidden
"set smartindent
set expandtab tabstop=4 shiftwidth=4
set viminfo=
set incsearch   " Highlight when searching
"set ignorecase
"set smartcase
set scrolloff=10
set ruler
set laststatus=2
set backspace=indent
set confirm
set clipboard=unnamedplus "Linux # Linux clipboard
" leader
let mapleader = "\<Space>"
let maplocalleader = "\\"
nnoremap <leader>t :%s/\s\s*$//g<CR>
nnoremap <leader><leader> V
" disable ex mode
nnoremap Q <nop>
" Upper case write-quitting
command! Q :q
command! Qa :qa
command! W  :w
command! Wa :wa
command! Bp :bp
command! Bn :bn

syntax enable
filetype indent off

highlight Folded ctermbg=black

let g:loaded_python_provider = 0
call plug#begin("~/.local/share/nvim/plugged")
Plug 'bfrg/vim-jq'
Plug 'kien/ctrlp.vim'
Plug 'junegunn/vim-plug'
"Plug 'jpalardy/vim-slime'
Plug 'rust-lang/rust.vim'
call plug#end()
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END
for c in ["/", ",", "<Space>"]
    exe "nnoremap ci".c." T".c."ct".c
    exe "nnoremap ca".c." F".c."cf".c
    exe "nnoremap vi".c." T".c."vt".c
    exe "nnoremap va".c." F".c."vf".c
    exe "nnoremap di".c." T".c."dt".c
    exe "nnoremap da".c." F".c."df".c
    exe "nnoremap yi".c." T".c."yt".c
    exe "nnoremap ya".c." F".c."yf".c
endfor
