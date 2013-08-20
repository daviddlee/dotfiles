set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Add Bundles here
"==============================
Bundle 'tpope/vim-sensible'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
"==============================

filetype plugin indent on

syntax on
set encoding=utf-8


" Key Mapping
map <c-p> :CtrlP
map <C-n> :NERDTreeToggle<CR>
map <c-c> <esc>

" Switch ctrl-movement keys to window switching
nmap <C-k> <C-w><Up>
nmap <C-j> <C-w><Down>
nmap <C-l> <C-w><Right>
nmap <C-h> <C-w><Left>

