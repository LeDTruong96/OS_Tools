lua << EOL
  require("telescope").load_extension("flutter")
EOL

nmap gr  <cmd>Telescope lsp_references theme=get_dropdown<cr>

