let mapleader = ","
nnoremap \ ,
set relativenumber
set nocompatible              " be iMproved, required
set encoding=utf8
set sessionoptions+=tabpages,globals
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'qpkorr/vim-bufkill'
Plugin 'aunsira/macvim-light'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'heavenshell/vim-jsdoc'
"Plugin 'mattn/emmet-vim'
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
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'ayu-theme/ayu-vim'
Plugin 'raggi/vim-color-raggi'
Plugin 'gcmt/taboo.vim'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'terryma/vim-multiple-cursors'
call vundle#end()            " required
nnoremap <F9> /asdf<cr> :echo <cr>
nnoremap <F4> :BD<cr>
nnoremap <F2> :Lpurge<cr>
nnoremap <leader>ll iconsole.log()<esc>i 
nnoremap <C-t> :tabnew<cr>
inoremap <C-v> <esc>pa
nnoremap <leader>lp :Lpurge<cr>
nnoremap <leader>v :vsp<CR><C-w>l :CtrlP <CR>
:nnoremap <leader>sts :mksession! ~/session.vim<cr>
:nnoremap <leader>rr "zdiw"0p
:nnoremap <leader>rr "zdiw"0p
:nnoremap <leader>nt i{{::""\|translate}}<esc>Th"a
:inoremap <leader>nt {{::""\|translate}}<esc>T"2ha
:nnoremap <leader>nf i$filter()()<esc>Trla
:inoremap <leader>nf $filter()()<esc>Trla
:nnoremap <leader>ngb i{{""}}<esc>T{a
:inoremap <leader>ngb {{""}}<esc>T{a
:nnoremap cd  iconsole.debug "" <esc>hi
:inoremap <leader>cd  console.debug 
nnoremap <leader>tr :TabooRename 
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
:nnoremap <esc> :close<cr>
:onoremap p i(
:onoremap " i"
:onoremap ' i'
:onoremap [ i[
:nnoremap <leader><space> >>
:nnoremap <space> za
:vnoremap <space> z
inoremap <C-space> <C-p>
filetype plugin indent on    " required
set laststatus=2
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
":set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:airline_powerline_fonts=1
let g:airline_theme='base16'
"Coloring
hi Folded guibg=#ffffff
hi Folded guifg=red
hi VertSplit guifg=#002b2b guibg=#002b2b
hi Search guifg=white guibg=red
if has("win32") || has("win16")
    set guifont=SpaceMono_NF:h12:cANSI:qDRAFT
endif
set nowrap "disable text wrapping 

"custom commands
function! SetDarkFn()
    colorscheme ayu
    hi VertSplit guifg=white 
endfunction
command! SetDark call SetDarkFn()
command! SetLight :colorscheme default
command! SetLargeFont set guifont=SpaceMono_NF:h16:cANSI:qDRAFT
command! SetSmallFont set guifont=SpaceMono_NF:h9:cANSI:qDRAFT

"bookmarks
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set fillchars+=vert:.
set fillchars+=fold:\ 
colorscheme macvim-light
hi folded guibg=#ffffff
highlight OverLength ctermbg=red ctermfg=white guibg='white' guifg='red'
match OverLength /\%81v.\+/

function! AirlineInit()
    let g:airline_section_a = airline#section#create(['mode'])
    let g:airline_section_b = '%{strftime("%c")}'
    let g:airline_section_c = 'BN: %{bufnr("%")}'
    let g:airline_section_c = 'BN: %{bufnr("%")}'
endfunction

autocmd VimEnter * call AirlineInit()

function! MyPlugin(...)
    " first variable is the statusline builder
    let builder = a:1

    " WARNING: the API for the builder is not finalized and may change
    call builder.add_section('StatusLine', '%f')
    call builder.split()
    call builder.add_section('airline_y', "%{strlen(getline('.'))}")
    call builder.add_section('airline_x', 'b: %{bufnr("%")}')
    call builder.add_section('airline_z', '%l% /%{line("$")}')

    " tell the core to use the contents of the builder
    return 1
endfunction
call airline#add_statusline_func('MyPlugin')

