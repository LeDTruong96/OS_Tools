"Edit init vim
nnoremap <Leader>ve :tabnew $MYVIMRC<CR>

"Set leader key
let g:mapleader="\<Space>"

"Tab auto completion
inoremap <expr> <Tab> pumvisible() ? "\<down><cr>" : "\<Tab>"
inoremap <expr> <CR> pumvisible() ? "\<CR>" : "\<CR>"

"Disable key when press alone
nmap S <nop>
nmap s <nop>

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
noremap J 5j
noremap K 5k
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
