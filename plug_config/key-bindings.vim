" autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
" autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()

" nnoremap sc <cmd>lua vim.lsp.diagnostic.goto_next { enable_popup = false }<cr> 
" nnoremap sC <cmd>lua vim.lsp.diagnostic.goto_prev { enable_popup = false }<cr> 

"Set leader key
let g:mapleader="\<Space>"

"Tab auto completion
inoremap <expr> <Tab> pumvisible() ? "\<down><cr>" : "\<Tab>"
inoremap <expr> <CR> pumvisible() ? "\<CR>" : "\<CR>"

"Disable key when press alone
nmap S <nop>
nmap s <nop>

"Remap to prevent auto add comment
nmap o o<Esc>^Da
nmap O O<Esc>^Da
vnoremap p "0p
vnoremap P "0P
nnoremap yy Y


"TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-Q> :wq!<CR>

"Better tabbing
vnoremap < <gv
vnoremap > >gv

"Movement
inoremap jj <esc>
inoremap kk <esc>
inoremap jj <esc>
inoremap kk <esc>
map J 5j
map K 5k
noremap H <C-d>
noremap L <C-u>

noremap so <C-o>
noremap si <C-i>

"Utilities
noremap gl <c-w>gf
noremap gf :noh<CR>

"Edit
noremap U <c-r>
noremap sy yyp
noremap sa _
noremap se $
noremap sh %
noremap sx :w<CR>
noremap sX :w<CR>:so $MYVIMRC<CR>
noremap sw :BufferClose<CR>
noremap sJ J 
noremap y y`>

"folding
nnoremap sff zC
nnoremap sfa zO
nnoremap sfu zo
nnoremap sft za

"Selection visual
noremap Sh vi{
noremap Sj vi(
noremap Sk vi[
noremap Sn vi"
noremap Sm vi'
noremap Sg gv
noremap Sd v$h
noremap Sf viw$%

"Marks
noremap mm :Marks<CR>
