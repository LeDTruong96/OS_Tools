let g:VM_maps = {}
let g:VM_maps['Find Under']         = 'gb'           " replace C-n
let g:VM_maps['Find Subword Under'] = 'gb'           " replace visual C-n
let g:VM_maps["Add Cursor Up"]='<S-Up>'
let g:VM_maps["Add Cursor Down"]='<S-Down>'

let g:VM_mouse_mappings = 1

nmap   <C-RightMouse>         <Plug>(VM-Mouse-Cursor)
nmap   <M-C-LeftMouse>      <Plug>(VM-Mouse-Column)
