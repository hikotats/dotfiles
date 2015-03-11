syntax on
filetype on
filetype plugin on
filetype indent on

set helplang=ja,en
set noswapfile
set clipboard=unnamed,autoselect

nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>
inoremap <C-c> <Esc>
vnoremap <silent> <C-p> "0p<CR>"

