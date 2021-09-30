set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vmuriart/jq.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent off

set showcmd
set showmatch
set hlsearch!
set smartindent
set ts=4 sts=4 sw=4 expandtab
set incsearch
set smartcase
set scrolloff=0
set ruler
set laststatus=2
set backspace=indent
set hidden

let mapleader = "\<Space>"
let maplocalleader = "\\"

nnoremap <leader>t :%s/\s\s*$//g<CR>
nnoremap <C-P> :FZF<CR>
nnoremap <leader>r :Rg<CR>
vnoremap <leader>c :w !clip.exe<CR>

nnoremap Q <nop>
command! Q  :q
command! Qa :qa
command! -bang Qa :qa<bang>
command! W  :w
command! Wa :wa
command! WA :wa
command! Bp :bp
command! Bn  :bn

augroup remember_folds
	autocmd!
	autocmd BufWinLeave * mkview
	autocmd BufWinEnter * silent! loadview
augroup END

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType make setlocal ts=8 sw=8
syntax enable
