" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100
let g:which_key_timeout = 100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 1
let g:which_key_floating_opts = { 'row': '-20', 'col': '0', 'width': '0', 'height': '0'}
let g:which_key_centered = 1
let g:which_key_hspace = 5
let g:which_key_vertical = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Single mappings
" let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
" let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]

" Often Command
let g:which_key_map.d = {
      \ 'name' : '+Usually Command' ,
      \ 'o' : [':only'                              , 'only'],
      \ 's' : [':Startify'                          , 'Startify'],
      \ 't' : [':Rg'                                , 'search text'],
      \ 'v' : ['<C-W>v'                             , 'split right'],
      \ 'h' : ['<C-W>s'                             , 'split below'],
      \ 'i' : [':tabnew $MYVIMRC'                   , 'init vim'],
      \ 'f' : [':Telescope flutter commands'        , 'flutter command'],
      \ 'p' : ['let @+ = expand("%:p")'            , 'full path'],
      \ 'r' : ['let @+ = expand("%")'              , 'relative path'],
      \ 'n' : ['let @+ = expand("%:t")'            , 'file name'],
      \ 'c' : [':BufferCloseAllButCurrent'          , 'close-other'],
      \ 'g' : [':BufferOrderByLanguage'             , 'order-tab-lg'],
      \ 'd' : [':BufferOrderByDirectory'            , 'order-tab-dir'],
      \ 'e' : [':exit'                              , 'exit'],
      \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'F' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

" Plugin command
let g:which_key_map.p = {
      \ 'name' : '+PlugCommand' ,
      \ 'i' : [':PlugInstall'     , 'PlugInstall'],
      \ 'c' : [':PlugClean'     , 'PlugClean'],
      \ 'u' : [':PlugUpdate'           , 'PlugUpdate'],
      \ 'g' : [':PlugUpgrade'       , 'PlugUpgrade'],
      \ 's' : [':PlugStatus'       , 'PlugStatus'],
      \ 'd' : [':PlugDiff'       , 'PlugDiff'],
      \ 'h' : [':PlugSnapshot'       , 'PlugSnapshot'],
      \ }




" Register which key map
call which_key#register('<Space>', "g:which_key_map")
