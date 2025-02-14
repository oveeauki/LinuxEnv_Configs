set rtp+=~/.vim/bundle/Vundle.vim
set number
set tabstop=2
set autoindent     
set smartindent     
set expandtab       
set encoding=utf-8
set background=dark
set laststatus=2
set termguicolors
set term=konsole
set signcolumn=no
set scl=no
set wrap linebreak nolist
set clipboard=unnamed  
set shiftwidth=2
set completeopt=menu,menuone,noselect

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
let g:ycm_complete_in_comments = 0
let g:ycm_autoclose_preview_window_after_completion = 1

nnoremap <A-Up> :m-2<CR>
nnoremap <A-Down> :m+<CR>
nnoremap <C-c> yy
nnoremap <C-v> p
nnoremap <C-d> dd
nnoremap <C-s> :w<CR>
nnoremap <C-z> u
inoremap <expr> " SmartQuote('"')

highlight Pmenu guibg=#292929 guifg=#ffffff
highlight PmenuKind guibg=#292929 guifg=#ffffff
highlight PmenuExtra guibg=#292929 guifg=#ffffff
highlight PmenuMatch guibg=#292929 guifg=#ffffff

function! SmartQuote(char)
    let line = getline('.')
    let pos = col('.') - 1
    
    if pos < len(line) && line[pos] == a:char
        return "\<Right>"
    endif
    
    return a:char
endfunction
