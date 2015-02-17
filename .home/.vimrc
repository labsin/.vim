execute pathogen#infect()
syntax on
filetype plugin indent on
set number
colorscheme darkblue
set expandtab ts=4 sw=4 ai
let mapleader = ","

nmap j gj
nmap k gk

set incsearch
set ignorecase
set smartcase
set hlsearch
nmap <Leader>q :nohlsearch<CR>
set hidden
set nobackup
set noswapfile

cmap w!! w !sudo tee % >/dev/null

let g:go_fmt_autosave=1
