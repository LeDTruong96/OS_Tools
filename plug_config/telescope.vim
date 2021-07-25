lua << EOL
  require("telescope").load_extension("flutter")
EOL

nmap <F5>  <cmd>Telescope flutter commands<cr>
nmap <F6>  <cmd>Telescope command_history theme=get_dropdown<cr>

nmap <leader>f  <cmd>Telescope lsp_code_actions theme=get_dropdown<cr>
nmap gp  <cmd>Telescope lsp_references theme=get_dropdown<cr>
nnoremap gd <Cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap gh <Cmd>lua vim.lsp.buf.hover()<CR>
