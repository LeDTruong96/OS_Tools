lua require'hop'.setup { keys = 'asdghklqwertyuiopzxcvbnmfjASDGHKLQWERTYUIOPZXCVBNMFJ', term_seq_bias = 0.5 }

highlight HopNextKey guifg=#00dfff
highlight HopNextKey1 guifg=#ffc000
highlight HopNextKey2 guifg=#c69000

noremap f <cmd>HopChar1<cr>
noremap F v<cmd>HopChar1<cr>
