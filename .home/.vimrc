" From debian.vim to make it more cross distro

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start	" more powerful backspacing

" Now we set some defaults for the editor
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

" modelines have historically been a source of security/resource
" vulnerabilities -- disable by default, even when 'nocompatible' is set
set nomodeline

execute pathogen#infect()
syntax on
filetype plugin indent on
set number
colorscheme darkblue
set expandtab ts=4 sw=4 ai
let mapleader = ","

set tabpagemax=50

nmap j gj
nmap k gk
function! CommendUncommend()
     if match(getline('.'),"<!--") == -1
       echom "Commend"
       s/<\([^!][^-]\{2\}\)/<!--\1/g
       s/\([^-]\{2\}\)>/\1-->/g
     else
       s/<[!][-]\{2\}/</g
       s/[-]\{2\}>/>/g
       echom "Uncommend"
     endif
endfunction

set showcmd     " Show (partial) command in status line.
" set showmatch   " Show matching brackets.
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap <Leader>q :nohlsearch<CR>
nmap <Leader>hc :call CommendUncommend()<CR>
set hidden
set nobackup
set dir=~/tmp/vim

cmap w!! w !sudo tee % >/dev/null

let g:go_fmt_autosave=1
