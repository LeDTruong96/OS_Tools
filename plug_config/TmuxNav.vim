"Tmux
let g:tmux_navigator_disable_when_zoomed = 1
let g:tmux_navigator_no_mappings = 1

noremap sk :TmuxNavigateRight<CR>

if has('gui_running')
  noremap sk <c-w>l
endif
