 let g:dart_format_on_save = 1

lua << EOF
   require("flutter-tools").setup{
     widget_guides = {
       enabled = true,
     },
     dev_tools = {
       autostart = true,
       auto_open_browser = false
     },
   } -- use defaults
EOF

 nmap <F5>  <cmd>Telescope flutter commands<cr>
 nmap <F6>  <cmd>Telescope command_history theme=get_dropdown<cr>
 nmap <leader>f  <cmd>Telescope lsp_code_actions theme=get_dropdown<cr>

 " Jump to definition
nnoremap gh <Cmd>lua vim.lsp.buf.hover()<CR>
 " Jump to definition
nnoremap gd <Cmd>lua vim.lsp.buf.definition()<CR>
 " Open code actions using the default lsp UI, if you want to change this please see the plugins above
nnoremap <leader>ca <Cmd>lua vim.lsp.buf.code_action()<CR>
"  " Open code actions for the selected visual range
xnoremap <leader>ca <Cmd>lua vim.lsp.buf.range_code_action()<CR>
