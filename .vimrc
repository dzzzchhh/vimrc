syntax on
set nu
set tabstop=2
set shiftwidth=2
:nmap <F2> :w<CR>
:imap <F2> <Esc> :w<CR>

:nmap <F3> :bn<CR>
:imap <F3> <Esc> :bn<CR>
set nocompatible              " be iMproved, required
filetype off                  " required
colorscheme koehler

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
call vundle#end()            " required
filetype plugin indent on    " required
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
:set list listchars=tab:>-,trail:.,extends:>
" Enter the middle-dot by pressing Ctrl-k then .M
:set list listchars=tab:\|_,trail:·
" Enter the right-angle-quote by pressing Ctrl-k then >>
:set list listchars=tab:»·,trail:·
" Enter the Pilcrow mark by pressing Ctrl-k then PI
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"disable GUI
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
