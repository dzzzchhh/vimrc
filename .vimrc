set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Provides the :BD command that kills the buffer, but not the frame
Plugin 'qpkorr/vim-bufkill'
Plugin 'vim-scripts/vim-coffee-script'
Plugin 'tpope/vim-fugitive'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
" Colorscheme
Plugin 'euclio/vim-nocturne'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'digitaltoad/vim-pug'
Plugin 'junegunn/vim-easy-align'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-surround'
Plugin 'jeetsukumaran/vim-buffergator'
" :Locate :Lpurge <leader> gl(over a word)
Plugin 'mtth/locate.vim'
call vundle#end()            " required
" yank word over existing word
:nnoremap <leader>rr "zdiw"0p
:nnoremap <leader>red A.reduce((a,b)=>{return a+b})<esc>
set foldlevel=20
" Coffeescript block coment by LostWOODS
:nnoremap <leader>q a #<esc>_i# <esc>_YP2l<c-v>t#hr#Yjp
:nnoremap <leader>nt i{{""\|translate}}<esc>T{a
:inoremap <leader>nt {{""\|translate}}<esc>T{a
:nnoremap <leader>ngb i{{""}}<esc>T{a
:inoremap <leader>ngb {{""}}<esc>T{a
:nnoremap cd  iconsole.debug "" <esc>hi
:inoremap <leader>cd  console.debug 
set foldmethod=indent
let javaScript_fold=1
set colorcolumn=80
set wildmenu
"replace all occurences of the word
:nnoremap <Leader>rw :%s/\<<C-r><C-w>\>//g<Left><Left>
"remove all occurences of the word
:nnoremap <Leader>dw :%s/\<<C-r><C-w>\>//g<cr>
syntax on
set nu
:set tabstop=2
:set shiftwidth=2
set expandtab
set incsearch
set hlsearch
nmap <leader>0 :TagbarToggle<cr>
"set noswapfile
:nnoremap bn :bn<CR>
:nnoremap <leader>G :Gulp<CR>
:nmap <F5> :NERDTreeToggle<CR>
:nmap <F10> :Goyo<CR>
:nmap 0 dd
" cool mappings :)
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :so%<cr>
" push updated vimrc to github
:nnoremap <leader>gv :!~/Scripts/./cpvimrc.sh<cr>
:nnoremap <leader>p Yp
:nnoremap fq :q<cr>
:inoremap jk <esc>
:inoremap fj <esc>:w<cr>
:nnoremap fj :w<cr>
:inoremap <esc> <nop>
"parenthesis remap
:onoremap p i(
:onoremap " i"
:onoremap ' i'
:onoremap [ i[
"folder switch
"goto home folder
:nnoremap <leader>gh :cd ~/<CR>
filetype plugin indent on    " required
set laststatus=2
" Enter the Pilcrow mark by pressing Ctrl-k then PI
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
"disable GUI
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
"js snippets
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

"colorcolumn
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

set ts=2 sw=2 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Vimscript file settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
" javascript file settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType javascript  setlocal foldmethod=syntax
augroup END
" }}}
colorscheme nocturne

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
"set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
hi StatusLine ctermbg=7 ctermfg=0
