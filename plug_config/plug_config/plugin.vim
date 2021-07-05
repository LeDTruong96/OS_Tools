call plug#begin('~/.vim/plugged')

"Dart/Flutter
Plug 'theniceboy/coc-flutter-tools'
Plug 'dart-lang/dart-vim-plugin'

"Utilities
Plug 'easymotion/vim-easymotion'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'akinsho/nvim-bufferline.lua'
Plug 'romgrk/barbar.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'voldikss/vim-floaterm'
Plug 'liuchengxu/vim-which-key'

call plug#end()
