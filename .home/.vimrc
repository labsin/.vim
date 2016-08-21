" --------------------------------------------------------------------
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

" --------------------------------------------------------------------

execute pathogen#infect()

syntax on
filetype plugin indent on

colorscheme darkblue

set number
set expandtab ts=4 sw=4 ai
set tabpagemax=50

let mapleader = ","
let maplocalleader = ","

let g:tern_map_keys = 1

let g:go_fmt_autosave=1

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

nmap j gj
nmap k gk
nmap <Leader>q :nohlsearch<CR>
nmap <Leader>hc :call CommendUncommend()<CR>
nmap <Leader>x :Lexplore<CR>
imap <C-O> <C-X><C-O>
cmap w!! w !sudo tee % >/dev/null

set showcmd     " Show (partial) command in status line.
set showmatch   " Show matching brackets.
set incsearch
set ignorecase
set smartcase
set hlsearch
set hidden
set nobackup
set dir=~/tmp/vim
