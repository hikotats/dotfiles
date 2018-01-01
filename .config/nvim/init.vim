" https://github.com/kristijanhusak/neovim-config/blob/master/init.vim

" ================ Plugins ==================== {{{
call plug#begin()

" Declare the list of plugins.
Plug 'bling/vim-airline'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'w0rp/ale', { 'do': 'npm install -g prettier' }
Plug 'nelstrom/vim-visual-star-search'
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'javascript.jsx'] }
Plug 'tpope/vim-surround'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'
Plug 'duff/vim-bufonly'
Plug 'gregsexton/MatchTag', { 'for': ['html', 'javascript.jsx'] }
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neosnippet'
Plug 'honza/vim-snippets'
Plug 'dyng/ctrlsf.vim'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'kristijanhusak/vim-js-file-import'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'tomtom/tcomment_vim'
Plug 'h1mesuke/vim-alignta'
Plug 'terryma/vim-expand-region'
Plug 'bronson/vim-trailing-whitespace'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'fuenor/qfixgrep'
Plug 'fuenor/qfixhowm'
Plug 'pentie/VimRepress'


call plug#end()
"}}}

filetype plugin indent on

let g:mapleader = "\<Space>"

set termguicolors
set title "change the terminal's title
set number "Line numbers are good
set history=500 "Store lots of :cmdline history
set showcmd "Show incomplete cmds down the bottom
set showmode "Hide showmode because of the powerline plugin
set gdefault "Set global flag for search and replace
set gcr=a:blinkon500-blinkwait500-blinkoff500 "Set cursor blinking rate
set cursorline "Highlight current line
" set cursorcolumn
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
set background=dark "Set background to dark
set hidden  "Hide buffers in background
set conceallevel=2 concealcursor=i "neosnippets conceal marker
set splitright "Set up new vertical splits positions
set splitbelow "Set up new horizontal splits positions
set path+=** "Allow recursive search
set inccommand=split "Show substitute changes immidiately in separate split
set fillchars+=vert:\| "Make vertical split separator full line
set pumheight=30 "Maximum number of entries in autocomplete popup
set noexrc "Disallow using local vimrc
set secure "Forbid autocmd in local vimrc

syntax on "turn on syntax highlighting
" syntax enable
" colorscheme solarized

silent! colorscheme onedark

" }}}
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

" cursor shape
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" set guifont=a18,r18,k18
" set guifont=Ricty\ Regular\ for\ Powerline:h20

let g:onedark_terminal_italics = 1

silent! colorscheme onedark

" ================ Auto commands ====================== {{{

augroup vimrc
    autocmd!
augroup END

autocmd vimrc BufWritePre * :call StripTrailingWhitespaces()                    "Auto-remove trailing spaces
autocmd vimrc InsertEnter * :set nocul                                          "Remove cursorline highlight
autocmd vimrc InsertLeave * :set cul | NeoSnippetClearMarkers                   "Add cursorline highlight in normal mode and remove snippet markers
autocmd vimrc FileType php setlocal sw=4 sts=4 ts=4                             "Set indentation to 4 for php
autocmd vimrc FocusGained,BufEnter * checktime                                  "Refresh file when vim gets focus

" }}}
" ================ Colorscheme setup ================ {{{

let g:bold_highlight_groups = ['Function', 'Statement', 'Todo', 'CursorLineNr', 'MatchParen', 'StatusLine']

for group in g:bold_highlight_groups
  call onedark#extend_highlight(group, { 'gui': 'bold' })
endfor

" }}}
" ================ Completion ======================= {{{
set wildmode=list:full
set wildignore=*.o,*.obj,*~                                                     "stuff to ignore when tab completing
set wildignore+=*.git*
set wildignore+=*.meteor*
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*cache*
set wildignore+=*logs*
set wildignore+=*node_modules/**
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Custom mappings ======================== {{{

" snippetを瞬時に開く
nnoremap <Leader>\ :execute "vnew ~/.vim/bundle/vim-snippets/snippets/"<CR>
nnoremap <Leader>ns :execute "tabnew\|:NeoSnippetEdit ".&filetype<CR>
nnoremap <Leader>vs :execute "vnew ~/.vim/bundle/vim-snippets/snippets/"<CR>

" Disable
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>
nnoremap Q :<C-u>help
map Q <Nop>
map q <Nop>

" Map save
nnoremap <Leader>w :w<CR>
" Map close
nnoremap <Leader>q :q<CR>
" Open vertical split
nnoremap <Leader>v :vnew<CR>
" Open horizontal split
nnoremap <Leader>n :new<CR>
" Open new file
" nnoremap <Leader>o :CtrlP<CR>
" Enter insert
nnoremap <CR> o
nnoremap <S-CR> O

" Map for Escape key
inoremap <silent> <ESC> <ESC><ESC>
inoremap <silent> <C-c> <ESC>
inoremap <silent> ;; <ESC>

"Yank to the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap <C-c> "+y
" Paste from system clipboard with Ctrl +v
" inoremap <C-v> <Esc>"+p
" vnoremap <C-v> "0p
" nnoremap <C-v> "0p

" Clear search highlight
nnoremap <ESC><ESC> :noh<CR>

" Find current file in NERDTreeToggle
nnoremap <Leader>hf :NERDTreeToggle<CR>

" Open NERDTreeToggle
nnoremap <Leader>e :NERDTreeToggle<CR>

" Toggle tagbar
nnoremap <Leader>l :TagbarToggle<CR>

" Toggle between last 2 buffers
nnoremap <Leader><tab> <c-^>

" Filesearch plugin map for searching in whole folder
nnoremap <Leader>f :call Search()<CR>

" Toggle buffer list
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>t :BTags<CR>
nnoremap <Leader>m :History<CR>

" Maps for indentation in normal mode
nnoremap <tab> >>
nnoremap <s-tab> <<

" Indenting in visual mode
xnoremap <s-tab> <gv
xnoremap <tab> >gv

" ビジュアルラインモードに切り替える
nmap <Leader><Leader> V

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Reformat and fix linting errors
nnoremap <Leader>r :ALEFix<CR>

" Reformat and fix linting errors
nnoremap <Leader>g :call FileImport()<CR>

" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-h> <Left>
inoremap <C-a> <HOME>
nnoremap <C-a> <HOME>
inoremap <C-e> <END>
nnoremap <C-e> <END>
inoremap <C-b> <BS>
inoremap <C-d> <Del>

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

" Tab navigation
" nnoremap <C-t> :tabnew<CR>
" inoremap <C-t> <Esc>:tabnew<CR>noremap <silent> <C-_><Tab> gt

nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :<C-u>cfirst<CR>
nnoremap ]Q :<C-u>clast<CR>

" \lでtaglistウインドウを開いたり閉じたり出来るショートカット"
nmap  <Leader>l :TagbarToggle<CR>

" ctrl + / で選択範囲のコメントアウト切り替え
" nmap <C-_> <Plug>(caw:i:toggle)
" vmap <C-_> <Plug>(caw:i:toggle)

" diff
nnoremap <Leader>df :vertical diffsplit

" Original keymap
nnoremap MN :MemoNew
nnoremap ML :MemoList
nnoremap MF :MemoFiler
nnoremap MG :MemoGrep
nnoremap PO :PrevimOpen
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

" }}}

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-Tab>"
smap <expr><TAB> neosnippet#jumpable() ?
\ "\<Plug>(neosnippet_jump)"
\: "\<TAB>"

let g:ctrlsf_auto_close = 0 "Do not close search when file is opened
let g:ctrlsf_mapping = {'vsplit': 's'} "Mapping for opening search result in vertical split

let g:gitgutter_realtime = 0 "Disable gitgutter in realtime
let g:gitgutter_eager = 0 "Disable gitgutter to eager load on tab or buffer switch

let g:user_emmet_leader_key = '<c-y>' "Change trigger emmet key

let g:NERDTreeChDirMode = 2 "Always change the root directory
let g:NERDTreeMinimalUI = 1 "Disable help text and bookmark title
let g:NERDTreeShowHidden = 1 "Show hidden files in NERDTree

let g:neosnippet#disable_runtime_snippets = {'_' : 1} "Snippets setup
let g:neosnippet#snippets_directory = ['~/.config/nvim/snippets','~/.vim/bundle/vim-snippets/snippets'] "Snippets directory

let g:deoplete#enable_at_startup = 1 "Enable deoplete autocompletion
let g:deoplete#file#enable_buffer_path = 1 "Autocomplete files relative to current buffer
let g:deoplete#tag#cache_limit_size = 10000000  "Allow tags file up to ~10 MB

let g:delimitMate_expand_cr = 1 "auto indent on enter

let g:ale_linters = {'javascript': ['eslint']} "Lint js with eslint
let g:ale_fixers = {'javascript': ['prettier', 'eslint']} "Fix eslint errors
let g:ale_javascript_prettier_options = '--single-quote --print-width 100 --trailing-comma es5' "Set max width to 100 chars for prettier
let g:ale_lint_on_save = 1 "Lint when saving a file
let g:ale_sign_error = '✖' "Lint error sign
let g:ale_sign_warning = '⚠' "Lint warning sign
let g:ale_statusline_format =[' %d E ', ' %d W ', ''] "Status line texts

let g:jsx_ext_required = 1 "Force jsx extension for jsx filetype
let g:javascript_plugin_jsdoc = 1 "Enable syntax highlighting for js doc blocks

let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki'}]  "Use dropbox folder for easier syncing of wiki

let g:magit_default_show_all_files = 0 "Fold all changes when Magit is opened

let g:tmux_navigator_disable_when_zoomed = 1 "Disable tmux navigation on fullscreen

" For snippet_complete marker.
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#disable_runtime_snippets = {'_' : 1}
let g:neosnippet#snippets_directory = '~/.vim/bundle/vim-snippets/snippets'

let howm_filename = '%Y/%m/%Y-%m-%d-%H%M%S.md'
let howm_dir = '~/Dropbox/howm'
let QFixHowm_FileType = 'markdown'
let QFixHowm_Title = '#'
let QFixMRU_Title = {}
let QFixMRU_Title['mkd'] = '^###[^#]'
let QFixMRU_Title['mkd_regxp'] = '^###[^#]'
let QFixHowm_ListReminder_ScheExt = '[-@+!~.]'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮁'
let g:airline#extensions#tabline#right_sep = '⮂'
let g:airline#extensions#tabline#right_alt_sep = '⮃'
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

" $HOME/dropbox/vimrc
source $HOME/dropbox/.vimrc
