" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'bling/vim-airline'                " airline
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'mac' : 'make'
\    },
\ }
NeoBundle 'Shougo/neomru.vim'                " neomru
NeoBundle 'Shougo/neocomplete.vim'           " neocomplete
NeoBundle 'violetyk/neocomplete-php.vim'     " neocomplete-php
NeoBundle 'Shougo/neosnippet.vim'            " neosnippet
NeoBundle 'honza/vim-snippets'               " vim-snippets
NeoBundle 'scrooloose/nerdtree'              " nerdtree
NeoBundle 'Shougo/vimfiler'                  " vimfiler
NeoBundle 'Shougo/vimshell'                  " vimshell
NeoBundle 'thinca/vim-quickrun'              " vim-quickrun
NeoBundle 'osyo-manga/shabadou.vim'          " shabadou.vim
NeoBundle 'osyo-manga/vim-watchdogs'         " vim-watchdogs
NeoBundle 'KazuakiM/vim-qfstatusline'        " vim-qfstatusline
NeoBundle 'mattn/gist-vim'                   " gist-vim
NeoBundle 'altercation/vim-colors-solarized' " solarized
NeoBundle 'vim-scripts/taglist.vim'          " taglist
NeoBundle 'majutsushi/tagbar'                " tagbar
NeoBundle 'vim-scripts/tagbar-phpctags'      " tagbar-phptags
NeoBundle 'kannokanno/previm'                    " previm
NeoBundle 'tyru/open-browser.vim'            " open browser
NeoBundle 'terryma/vim-expand-region'        " vim-expand-region
NeoBundle 'vim-jp/vimdoc-ja'                 " vimdoc
NeoBundle 'h1mesuke/vim-alignta'             " alinta
NeoBundle 'glidenote/memolist.vim'           " memolist
NeoBundle 'ctrlpvim/ctrlp.vim'               " ctrlp
NeoBundle 'mattn/webapi-vim'                 " webapi
NeoBundle 'moznion/hateblo.vim'              " hateblo
NeoBundle 'fuenor/qfixgrep'
NeoBundle 'fuenor/qfixhowm'
NeoBundle 'ujihisa/neco-look'                " neco-look
NeoBundle 'mattn/emmet-vim'                  " emmet
NeoBundle 'tpope/vim-surround'               " surround
NeoBundle 'tpope/vim-fugitive'               " fugitive
NeoBundle 'jreybert/vimagit'                 " vimagit
NeoBundle 'airblade/vim-gitgutter'           " vim-gitgutter
NeoBundle 'junegunn/gv.vim'                  " gv
NeoBundle 'Xuyuanp/nerdtree-git-plugin'      " nerdtree-git-plugin
NeoBundle 'tpope/vim-markdown'               " markdown
NeoBundle 'hail2u/vim-css3-syntax'           " css3 syntax
NeoBundle 'jelera/vim-javascript-syntax'     " javascript syntax
NeoBundle 'othree/yajs.vim'                  " yajs.vim
NeoBundle 'elzr/vim-json'                    " json syntax
NeoBundle 'kchmck/vim-coffee-script'         " coffee syntax
NeoBundle 'groenewege/vim-less'              " less syntax
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'leafgarland/typescript-vim.git'   " typescript
NeoBundle 'marijnh/tern_for_vim', {
\ 'build': {
\   'others': 'npm install'
\}}
NeoBundle 'motemen/xslate-vim'               " xslate
NeoBundle 'myhere/vim-nodejs-complete'       " nodejs complete
NeoBundle 'tomtom/tcomment_vim'              " tcomment
NeoBundle 'vim-scripts/matchit.zip'          " matchit
NeoBundle 'thinca/vim-ref'                   " ref
NeoBundle 'mattn/excitetranslate-vim'        " 翻訳
NeoBundle 'scrooloose/syntastic'             " syntastic
NeoBundle 'pmsorhaindo/syntastic-local-eslint.vim'
NeoBundle 'sbl/scvim'                        " scvim
NeoBundle 'AndrewRadev/splitjoin.vim'        " splitjoin
NeoBundle 'bronson/vim-trailing-whitespace'  " vim-trailing-whitespace
NeoBundle 'rking/ag.vim'                     " ag
NeoBundle 'joshdick/onedark.vim'
NeoBundle 'editorconfig/editorconfig-vim'    " editorconfig
NeoBundle 'pentie/VimRepress'                " VimRepress
NeoBundle 'batsuev/csscomb-vim'              " csscomb
NeoBundle 'kewah/vim-stylefmt'               " stylefmt
NeoBundle 'vim-scripts/vim-niji'             " vim-niji
NeoBundle 'tomlion/vim-solidity'             " vim-solidity

call neobundle#end()

filetype plugin indent on     " Required!
syntax on

" プラグインがインストールされているかチェック
NeoBundleCheck
autocmd VimEnter * imap <Nul> <C-Space>

if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif

" powerline
set laststatus=2
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set noshowmode

filetype plugin indent on

let g:mapleader = "\<Space>"

set termguicolors
set title "change the terminal's title
set number "Line numbers are good
set history=500 "Store lots of :cmdline history
set showcmd "Show incomplete cmds down the bottom
set noshowmode "Hide showmode because of the powerline plugin
set gdefault "Set global flag for search and replace
set gcr=a:blinkon500-blinkwait500-blinkoff500 "Set cursor blinking rate
set cursorline "Highlight current line
set cursorcolumn
set smartcase "Smart case search if there is uppercase
set ignorecase "case insensitive search
set mouse=a "Enable mouse usage
set showmatch "Highlight matching bracket
set nostartofline "Jump to first non-blank character
set timeoutlen=1000 ttimeoutlen=0 "Reduce Command timeout for faster escape and O
set fencs=utf-8,iso-2022-jp,euc-jp,cp932 "Set utf-8 encoding on write
set wrap "Enable word wrap
set linebreak "Wrap lines at convenient points
set listchars=tab:^\ ,trail:·,eol:↲,extends:❯,precedes:❮ "Set trails for tabs and spaces
set list "Enable listchars
set lazyredraw "Do not redraw on registers and macros
set background=light "Set background to light
set hidden  "Hide buffers in background
set conceallevel=2 concealcursor=i "neosnippets conceal marker
set splitright "Set up new vertical splits positions
set splitbelow "Set up new horizontal splits positions
set path+=** "Allow recursive search
set fillchars+=vert:\| "Make vertical split separator full line
set pumheight=30 "Maximum number of entries in autocomplete popup
set noexrc "Disallow using local vimrc
set secure "Forbid autocmd in local vimrc

syntax on "turn on syntax highlighting
" syntax enable
" colorscheme solarized

silent! colorscheme onedark

" ================ Turn Off Swap Files ============== {{{

set noswapfile
set nobackup
set nowb

" }}}
" ================ Persistent Undo ================== {{{

" Keep undo history across sessions, by storing in file.
silent !mkdir ~/.config/nvim/backups > /dev/null 2>&1
set undodir=~/.config/nvim/backups
set undofile

" }}}
" ================ Indentation ====================== {{{

set ts=2 sw=2 sts=0 " tabstop shiftwidth softtabstop
set expandtab
set smartindent
set colorcolumn=80
set ruler

" }}}


set helpheight=999
set hlsearch
set whichwrap=b,s,h,l,<,>,[,],~ " add
set cindent " add
" set ambiwidth=double

set langmenu=ja_JP.utf-8
if has('nvim')
  set clipboard+=unnamedplus
else
  set laststatus=2
  set wildmenu
  set wildmode=list:longest,full
  set clipboard=unnamed,autoselect
  set mouse=a " Enamble mouse usage (all modes)
  set backspace=indent,eol,start
endif

" set guifont=a18,r18,k18
set guifont=Ricty\ Regular\ for\ Powerline:h18
" Guifont! Consolas:h9
set display=lastline
"https://github.com/leader22/dotfiles/blob/master/.vimrc
set autoindent
set helplang=ja,en
set foldmethod=marker
" set ttymouse=xterm2 Unknown option ttyomouse
set shellslash
" set iminsert=2 Invalid argument
set visualbell t_vb= "ビープ音すべてを無効にする
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない
set isk+=-

" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"
" if (has("termguicolors"))
"   set termguicolors
" endif
"
" cursor shape
let &t_SI = "\e]50;CursorShape=1\x7"
let &t_EI = "\e]50;CursorShape=0\x7"
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"
set path+=~/.cabal/bin/pandoc

" .vimrcを瞬時に開く
" nnoremap <Space><Space>. :e $MYVIMRC<CR>
nnoremap <Leader>. :<C-u>tabedit $MYVIMRC<CR>
" keymapを開く
nnoremap <Leader>, :<C-u>tabedit ~/dotfiles/vimrc.keymap<CR>
" pluginsを開く
nnoremap <Leader>; :<C-u>tabedit ~/dotfiles/vimrc.plugins<CR>

" vimrcの設定を反映
nnoremap <Leader><Leader>.. :<C-u>source $MYVIMRC<CR>

" snippetを瞬時に開く
nnoremap <Leader>\ :execute "vnew ~/.vim/bundle/vim-snippets/snippets/"<CR>
nnoremap <Leader>ns :execute "tabnew\|:NeoSnippetEdit ".&filetype<CR>
nnoremap <Leader>vs :execute "vnew ~/.vim/bundle/vim-snippets/snippets/"<CR>

nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>
nnoremap Q :<C-u>help
map q <Nop>

" ファイルを保存する
nnoremap <Leader>w :w<CR>
" 新しいファイルを開く
nnoremap <Leader>o :CtrlP<CR>
" ファイルを閉じる
nnoremap <Leader>q :q<CR>
" 新規垂直タブ
nnoremap <Leader>v :vnew<CR>
" 新規平行タブ
nnoremap <Leader>n :new<CR>
" Enterで改行 insert
nnoremap <CR> o
nnoremap <S-CR> O

" 検索のハイライトを消す
nnoremap <ESC><ESC> :noh<CR>

" システムのクリップボードにコピー＆ペーストする
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" ビジュアルラインモードに切り替える
nmap <Leader><Leader> V

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
"
" insertモードから抜ける
inoremap <silent> <C-c> <ESC>
inoremap <silent> ;; <ESC>

" 行末までのヤンクにする
nnoremap Y y$

" インクリメント
nnoremap + <C-a><Left>
" デクリメント
nnoremap - <C-x><Left>

" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-a> <HOME>
nnoremap <C-a> <HOME>
inoremap <C-e> <END>
nnoremap <C-e> <END>
inoremap <C-f> <Right>
inoremap <C-b> <BS>
inoremap <C-d> <Del>

" Tab navigation
nnoremap <C->>    :tabprevious<CR>
nnoremap <C-Right>    :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-Left>    <Esc>:tabprevious<CR>i
inoremap <C-Right>    <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>noremap <silent> <C-_><Tab> gt

" 引用符, 括弧の設定
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>
vnoremap ` "zdi`<C-R>z`<ESC>

nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :<C-u>cfirst<CR>
nnoremap ]Q :<C-u>clast<CR>

inoremap <C-c> <Esc>
vnoremap <C-p> "0p<CR>"
" NERDTreeToggle
nnoremap <silent><Leader>e :NERDTreeToggle<CR>
" \lでtaglistウインドウを開いたり閉じたり出来るショートカット"
nmap  <Leader>l :TagbarToggle<CR>

" ctrl + / で選択範囲のコメントアウト切り替え
nmap <C-_> <Plug>(caw:i:toggle)
vmap <C-_> <Plug>(caw:i:toggle)

" diff
nnoremap <Leader>df :vertical diffsplit

" memolist keymap
" メモ関連マッピング
nnoremap MN :MemoNew
nnoremap ML :MemoList
nnoremap MF :MemoFiler
nnoremap MG :MemoGrep
nnoremap VF :VimFiler
nnoremap PO :PrevimOpen
nnoremap HC :HatebloCreate
nnoremap HD :HatebloCreateDraft
nnoremap HB :execute "OpenBrowser ".hatebloUrl
nnoremap CP :CopyPath
nnoremap CFP :CopyFullPath
nnoremap CF :CopyFileName
nnoremap BL :BlogList
nnoremap BN :BlogNew
nnoremap BP :BlogPreview draft
nnoremap BS :BlogSave publish
nnoremap BC :BlogCode

" expand path
cmap <c-x> <c-r>=expand('%:p:h')<cr>/
" expand file (not ext)
cmap <c-z> <c-r>=expand('%:p:r')<cr>

let g:ctrlp_map = '<Nop>'

function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

" vim-qfstatusline {{{
set laststatus=2
set cmdheight=1
" }}}
" vim-quickrun {{{
" runner/vimproc/updatetime で出力バッファの更新間隔をミリ秒で設定できます
" updatetime が一時的に書き換えられてしまうので注意して下さい
let g:quickrun_config = {}
let g:quickrun_config._ = {
      \   'runner' : 'vimproc',
      \   'runner/vimproc/updatetime' : 60
      \ }
let g:quickrun_config['markdown'] = {
      \  'outputter' : 'browser',
      \  'command': 'pandoc',
      \  'cmdopt': '-s --template=github --css=github.css --from=markdown --to=html',
      \  'exec': '%c %o %s %a'
      \ }
let g:quickrun_config['coffee'] = {
      \  'command': 'coffee',
      \  'cmdopt': '-pb'
      \ }
let g:quickrun_config['babel'] = {
      \  'cmdopt': '--stage 1',
      \  'exec': 'babal %o %s | node'
      \ }
let g:quickrun_config['java'] = {
      \  'exec' : ['javac -J-Dfile.encoding=UTF8 %o %s', '%c -Dfile.encoding=UTF8 %s:t:r %a']
      \ }
let g:quickrun_config['css'] = {
      \ 'exec': ['call Stylefmt() %o %c | node']
      \ }
let g:quickrun_config['scheme'] = {
      \ 'command': '/usr/local/bin/gosh'
      \ }
" <C-c> で実行を強制終了させる
" quickrun.vim が実行していない場合には <C-c> を呼び出す
nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"
" }}}
" solarized {{{
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast='normal'
let g:solarized_visibility='normal'
autocmd VimEnter,Colorscheme * hi SpecialKey gui=none guibg=#002b36
" }}}
" Airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮁'
let g:airline#extensions#tabline#right_sep = '⮂'
let g:airline#extensions#tabline#right_alt_sep = '⮃'
" let g:unite_force_overwrite_statusline = 0
" let g:vimfiler_force_overwrite_statusline = 0
" let g:airline_powerline_fonts = 1
" let g:Powerline_symbols = 'fancy'
" set guifont=Ricty\ Regular\ for\ Powerline:h14
" set t_Co=256
let g:airline_theme = 'onedark'
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
else
" let g:airline_symbols.space = \"\ua0"
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'
  let g:airline_symbols.linenr = '⭡'
endif
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab
let g:airline#extensions#tabline#buffer_idx_format = {
      \ '0': '0 ',
      \ '1': '1 ',
      \ '2': '2 ',
      \ '3': '3 ',
      \ '4': '4 ',
      \ '5': '5 ',
      \ '6': '6 ',
      \ '7': '7 ',
      \ '8': '8 ',
      \ '9': '9 '
      \}
" /=Airline }}}1
" qfixhowm {{{
" ファイル拡張子をmdにする
let howm_filename = '%Y/%m/%Y-%m-%d-%H%M%S.md'
" howm_dir
let howm_dir = '~/Dropbox/howm'
" ファイルタイプをmarkdownにする
let QFixHowm_FileType = 'markdown'
" タイトル記号
let QFixHowm_Title = '#'
" タイトル行検索正規表現の辞書を初期化
let QFixMRU_Title = {}
" MRUでタイトル行とみなす正規表現(Vimの正規表現で指定)
let QFixMRU_Title['mkd'] = '^###[^#]'
" grepでタイトル行とみなす正規表現(使用するgrepによっては変更する必要があります)
let QFixMRU_Title['mkd_regxp'] = '^###[^#]'

let QFixHowm_ListReminder_ScheExt = '[-@+!~.]'
" QFixHowm + Markdown
"
" }}}
" Previm {{{
" let g:previm_open_cmd = 'open -a Chrome'
" }}}
" neocomplete {{{
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" 補完が自動で開始される文字数
" let g:neocomplete#auto_completion_start_length = 3
" smarrt case有効化。 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#enable_smart_case = 1
" camle caseを有効化。大文字を区切りとしたワイルドカードのように振る舞う
let g:neocomplete#enable_camel_case_completion = 1
" _(アンダーバー)区切りの補完を有効化
let g:neocomplete#enable_underbar_completion = 1
" シンタックスをキャッシュするときの最小文字長を3に
let g:neocomplete#min_syntax_length = 3
" Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" neocompleteを自動的にロックするバッファ名のパターン
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" -入力による候補番号の表示
let g:neocomplete#enable_quick_match = 1
" 補完候補の一番先頭を選択状態にする(AutoComplPopと似た動作)
let g:neocomplete#enable_auto_select = 0
"ポップアップメニューで表示される候補の数。初期値は100
" let g:neocomplete#max_list = 20


" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'default'    : '',
  \ 'vimshell'   : $HOME.'/.vimshell_hist',
  \ 'scheme'     : $HOME.'/.gosh_completions',
  \ 'php'        : '~/Dropbox/dict/php.dict,~/Dropbox/dict/wordpress.dict',
  \ 'javascript' : '~/Dropbox/dict/javascript.dict,~/Dropbox/dict/jquery.dict,~/Dropbox/dict/lodash.dict,~/Dropbox/dict/react.dict,~/Dropbox/dict/redux.dict',
  \ 'ejs'        : $HOME.'/Dropbox/kanpo.dict'
  \ }


" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'


if !exists('g:neocomplete#text_mode_filetypes')
    let g:neocomplete#text_mode_filetypes = {}
endif
let g:neocomplete#text_mode_filetypes = {
  \ 'markdown': 1,
  \ 'text': 1
  \ }

" Recommended key-mappings.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
endfunction
" Plugin key-mappings.
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr><C-l> pumvisible() ? neocomplete#complete_common_string() : "\<Right>"
inoremap <expr><C-g> neocomplete#undo_completion()
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> pumvisible() ? neocomplete#smart_close_popup() : "\<Left>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><C-e>  neocomplete#cancel_popup()
"Space to select items:
inoremap <expr><Space> pumvisible() ? neocomplete#close_popup()."\<Space>" : "\<Space>"
inoremap <expr><C-Space> pumvisible() ? neocomplete#close_popup() : ""

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

au BufRead,BufNewFile *.json set filetype=javascript

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" neocomplete-php confing
let g:neocomplete_php_locale = 'ja'
" }}}
" neosunippet-snippets {{{
imap ,, <Plug>(neosnippet_expand_or_jump)
smap ,, <Plug>(neosnippet_expand_or_jump)
xmap ,, <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#disable_runtime_snippets = {'_' : 1}
let g:neosnippet#snippets_directory = '~/.vim/bundle/vim-snippets/snippets'

" }}}
" taglist {{{
set tags=tags
" ctagsのコマンド
let Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8_1/bin/ctags'
"右側にtag listのウインドうを表示する
let Tlist_Use_Right_Window = 1
"taglistのウインドウだけならVimを閉じる
let Tlist_Exit_OnlyWindow = 1
let g:tlist_javascript_settings = 'javascript;c:class;m:method;f:function;p:property'
" let s:tlist_def_javascript_settings = 'javascript;f:function;c:class;m:method;p:property'

" }}}
" vim-trailing-whitespace {{{
highlight default ExtraWhitespace ctermbg=darkred guibg=#d33682
" ファイル保存時に余分なスペースを削除する
autocmd BufWritePre * :FixWhitespace
" }}}
" grep {{{
" 自動的にquickfix-windowを開く
autocmd QuickFixCmdPost *grep* cwindow
" }}}
" copyPath {{{
function! CopyPath()
  let @*=expand('%:P')
endfunction

function! CopyFullPath()
  let @*=expand('%:p')
endfunction

function! CopyFileName()
  let @*=expand('%:t')
endfunction

command! CopyPath     call CopyPath()
command! CopyFullPath call CopyFullPath()
command! CopyFileName call CopyFileName()

" }}}
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
" syntastic {{{
let g:syntastic_javascript_standard_exec="~/.nodebrew/current/bin/standard"
let g:syntastic_javascript_eslint_exec="~/.nodebrew/current/bin/eslint"
let g:syntastic_javascript_checkers=["eslint"]
" autocmd bufwritepost *.js silent !standard --fix -w %
" set autoread

let g:syntastic_mode_map = {
      \   'mode': 'active',
      \   'active_filetypes': ['javascript'],
      \   'passive_filetypes': []
      \ }

" ここから下は Syntastic のおすすめの設定
" ref. https://github.com/scrooloose/syntastic#settings

" エラー行に sign を表示
let g:syntastic_enable_signs = 1
" location list を常に更新
let g:syntastic_always_populate_loc_list = 0
" location list を常に表示
let g:syntastic_auto_loc_list = 2
" ファイルを開いた時にチェックを実行する
let g:syntastic_check_on_open = 0
" :wq で終了する時もチェックする
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=6
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"  }}}
"  {{{ csscomb
" Map bc to run CSScomb. bc stands for beautify css
autocmd FileType css noremap <buffer> <leader>bc :CSScomb<CR>
" Automatically comb your CSS on save
autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :CSScomb
"  }}}

" memolist.vim
" Maintainer:  Akira Maeda <glidenote@gmail.com>
" Version:  0.1.0
" See doc/memolist.txt for instructions and usage.

" Code {{{1
" Exit quickly when:
" - this plugin was already loaded (or disabled)
" - when 'compatible' is set

if (exists("g:loaded_memolist") && g:loaded_memolist) || &cp
  finish
endif
let g:loaded_memolist = 1

let s:cpo_save = &cpo
set cpo&vim

if !exists('g:memolist_path')
  let g:memolist_path = $HOME . "/Dropbox/memo"
endif

command! -nargs=0 MemoList :call memolist#list()
" command! -nargs=? MemoGrep :call memolist#grep(<q-args>)
command! -nargs=? MemoNew :call memolist#new(<q-args>)

let &cpo = s:cpo_save
" メモを作成するコマンド
" command! -nargs=0 MemoNew call s:open_memo_file()

" メモ一覧をUniteで呼び出すコマンド
command! -nargs=0 MemoList :Unite file_rec:~/Dropbox/Memo/ -buffer-name=memo_list

" メモ一覧をUnite grepするコマンド
command! -nargs=0 MemoGrep :Unite grep:~/Dropbox/Memo/ -no-quit

" メモ一覧をVimFilerで呼び出すコマンド
command! -nargs=0 MemoFiler :VimFiler ~/Dropbox/Memo

" vim:set ft=vim ts=2 sw=2 sts=2:

