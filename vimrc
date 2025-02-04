set rtp+=~/.vim/bundle/Vundle.vim
set number
set tabstop=2
set encoding=utf-8
set background=dark
set laststatus=2
set termguicolors
set term=konsole
set signcolumn=no
set scl=no
set wrap linebreak nolist
set number          
set relativenumber      
set clipboard=unnamed  
set autoindent     
set smartindent     
set expandtab       
set shiftwidth=2

colorscheme jellybeans
syntax enable
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jayli/vim-easycomplete'
call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'
let mapleader = " "

nnoremap <A-Up> :m-2<CR>
nnoremap <A-Down> :m+<CR>
nnoremap <C-c> yy
nnoremap <C-v> p
nnoremap <C-d> dd
nnoremap <C-s> :w<CR>
nnoremap <C-z> u
