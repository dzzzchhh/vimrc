set nocompatible              " be iMproved, required
set encoding=utf8
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'qpkorr/vim-bufkill'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'euclio/vim-nocturne'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'digitaltoad/vim-pug'
Plugin 'junegunn/vim-easy-align'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mtth/locate.vim'
Plugin 'mhinz/vim-startify'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ayu-theme/ayu-vim'
call vundle#end()            " required
:nnoremap <leader>rr "zdiw"0p
:nnoremap <leader>mdic imd-input-container 
:nnoremap <leader>rr "zdiw"0p
:nnoremap <leader>nt i{{::""\|translate}}<esc>Th"a
:inoremap <leader>nt {{::""\|translate}}<esc>T"ha
:nnoremap <leader>nf i$filter()()<esc>Trla
:inoremap <leader>nf $filter()()<esc>Trla
:nnoremap <leader>ngb i{{""}}<esc>T{a
:inoremap <leader>ngb {{""}}<esc>T{a
:nnoremap cd  iconsole.debug "" <esc>hi
:inoremap <leader>cd  console.debug 
set foldmethod=indent
let javaScript_fold=1
set wildmenu
set nu
:nnoremap <Leader>rw :%s/\<<C-r><C-w>\>//g<Left><Left>
:nnoremap <Leader>dw :%s/\<<C-r><C-w>\>//g<cr>
syntax on
:set tabstop=4
:set shiftwidth=4
set expandtab
set incsearch
set hlsearch
:nmap <F5> :NERDTreeToggle<CR>
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :so%<cr>
:nnoremap <leader>gv :!~/Scripts/./cpvimrc.sh<cr>
:nnoremap <leader>p Yp
:nnoremap fq :q<cr>
:inoremap jk <esc>
:inoremap fj <esc>:w<cr>
:nnoremap fj :w<cr>
:inoremap <esc> <nop>
:onoremap p i(
:onoremap " i"
:onoremap ' i'
:onoremap [ i[
filetype plugin indent on    " required
set laststatus=2
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
":set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:airline_powerline_fonts=1

let ayucolor='dark'
colorscheme ayu
let g:airline_theme='luna'
"Coloring
hi Folded guibg=#003213
hi Folded guifg=#fff332
hi VertSplit guifg=#002b2b guibg=#002b2b
hi Search guifg=white guibg=red
if has("win32") || has("win16")
    set guifont=CodeNewRoman_NF:h12:cRUSSIAN:qDRAFT
endif
set termguicolors
set nowrap "disable text wrapping 
