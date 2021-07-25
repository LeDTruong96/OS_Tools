lua << EOL
local saga = require 'lspsaga'
saga.init_lsp_saga {
  finder_action_keys = {
    open = 'o', vsplit = 's',split = 'i',quit = '<Esc>',scroll_down = '<C-f>', scroll_up = '<C-b>' -- quit can be a table
  },
  code_action_keys = {
    quit = '<Esc>',exec = '<CR>'
  },
}
EOL

" -- or use command LspSagaFinder
nnoremap <silent> sc :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gh :Lspsaga hover_doc<CR>
nnoremap <silent> gs :Lspsaga signature_help<CR>
nnoremap <silent> gr :Lspsaga rename<CR>

hi LspSagaDiagnosticBorder guifg=#3cb6c4
hi LspSagaDiagnosticTruncateLine guifg=#3cb6c4
