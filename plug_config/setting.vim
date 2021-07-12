syntax enable
set hidden
set nowrap
set mouse=a
set relativenumber
set number
set termguicolors
set noswapfile
set clipboard+=unnamedplus
set nowrap                              
set encoding=utf-8                     
set fileencoding=utf-8
set ruler
set tabstop=2
set shiftwidth=2
set smarttab	
set expandtab	
set cursorline
set showtabline=2
set nobackup
set nowritebackup
set updatetime=100
set formatoptions-=cro
set timeoutlen=500
set list listchars=tab:»-,trail:·,extends:»,precedes:«
let g:vim_json_conceal=0

set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

lua << EOF
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = false,
      signs = false,
    }
  )
EOF

autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()
