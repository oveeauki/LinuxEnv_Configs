set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ycm-core/ycm'
call vundle#end()
filetype plugin indent on
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jayli/vim-easycomplete'
Plug 'SirVer/ultisnips'
let g:airline_powerline_fonts = 1
set encoding=utf-8
set background=dark
colorscheme PaperColor
set number
set laststatus=2
syntax enable
call plug#end()
set term=gnome-256color
