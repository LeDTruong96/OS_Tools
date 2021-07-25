 nnoremap sr :NERDTreeFind<cr>
 nnoremap sb :NERDTreeToggle<cr>

 let g:NERDTreeDirArrowExpandable = '▸'
 let g:NERDTreeDirArrowCollapsible = '▾'

nnoremap <expr> <Esc> g:NERDTree.IsOpen() ? ":NERDTreeToggle<cr>" : "\<Esc>"

