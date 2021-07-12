call plug#begin('~/.vim/plugged')

"Dart/Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'nvim-lua/plenary.nvim'
Plug 'akinsho/flutter-tools.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'glepnir/lspsaga.nvim'

"Utilities
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-commentary'
Plug 'ptzz/lf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-surround'
Plug 'romgrk/barbar.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'voldikss/vim-floaterm'
Plug 'liuchengxu/vim-which-key'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'phaazon/hop.nvim'
Plug 'ap/vim-css-color'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'preservim/nerdtree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Themes
Plug 'dracula/vim',
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'

call plug#end()
