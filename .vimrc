set hidden

set number
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab
    
set hlsearch
set ignorecase
set smartcase
set colorcolumn=80

set pastetoggle=<F3>
imap jj   <Esc>
imap kk   <Esc>

filetype plugin on

nnoremap <Tab>   : bnext<CR>
nnoremap <S-Tab> : bprevious<CR>

nnoremap <C-x>   : bd<CR>
nnoremap <C-z>   : bd!<CR>

nnoremap <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let g:ctrlp_show_hidden = 1

let mapleader=','
    if exists(":Tabularize")
    endif

call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'ap/vim-buftabline'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'godlygeek/tabular'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
call plug#end()


