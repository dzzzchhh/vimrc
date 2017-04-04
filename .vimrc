set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'qpkorr/vim-bufkill'
Plugin 'vim-scripts/vim-coffee-script'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'MattesGroeger/vim-bookmarks'
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
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'itchyny/calendar.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mtth/locate.vim'
call vundle#end()            " required
:nnoremap <leader>rr "zdiw"0p
:nnoremap <leader>mdic imd-input-container 
:nnoremap <leader>rr "zdiw"0p
:nnoremap <leader>nt i{{::""\|translate}}<esc>T{a
:inoremap <leader>nt {{::""\|translate}}<esc>T{a
:nnoremap <leader>nf i$filter()()<esc>Trla
:inoremap <leader>nf $filter()()<esc>Trla
:nnoremap <leader>ngb i{{""}}<esc>T{a
:inoremap <leader>ngb {{""}}<esc>T{a
:nnoremap cd  iconsole.debug "" <esc>hi
:inoremap <leader>cd  console.debug 
set foldmethod=indent
let javaScript_fold=1
set wildmenu
:nnoremap <Leader>rw :%s/\<<C-r><C-w>\>//g<Left><Left>
:nnoremap <Leader>dw :%s/\<<C-r><C-w>\>//g<cr>
syntax on
set nu
:set tabstop=4
:set shiftwidth=4
set expandtab
set incsearch
set hlsearch
:nnoremap bn :bn<CR>
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
colorscheme nocturne
let g:colorcode_global=1
let g:airline_powerline_fonts=1
