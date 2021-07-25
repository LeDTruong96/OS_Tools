 let g:dart_format_on_save = 1

lua << EOF
  require("flutter-tools").setup{
    widget_guides = {
      enabled = true,
    },
    dev_tools = {
      autostart = true,
    },
    lsp = {
      settings = {
          analysisExcludedFolders = {}
    }
} 
  } 
EOF

