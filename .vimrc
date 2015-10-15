call pathogen#infect()

" Syntax Highlighting {{{
set term=builtin_ansi
filetype plugin indent on

syntax enable
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" }}}

" Look and feel {{{
let g:hybrid_use_Xresources = 1
colorscheme hybrid
" }}}

" Status Bar {{{

" Status line (:help status-line)
" format markers:
"   %t File name (tail) of file in the buffer
"   %m Modified flag, text is " [+]"; " [-]" if 'modifiable' is off.
"   %r Readonly flag, text is " [RO]".
"   %y Type of file in the buffer, e.g., " [vim]".
"   %= Separation point between left and right aligned items.
"   %l Line number.
"   %L Number of lines in buffer.
"   %c Column number.
"   %P percentage through buffer
set laststatus=2 " Always set a status line
set statusline=%{fugitive#statusline()}:\ %f%m%r\ %y\ %=[%l,%v]\ [:%L] 

" Set status bar to Red in insert mode
au InsertEnter * hi StatusLine ctermfg=Green
au InsertLeave * hi StatusLine ctermfg=Grey

set wildmenu " visual autocomplete for command menu

hi clear SignColumn
hi StatusLine ctermfg=Grey
" }}}

" General {{{
" Set numbers
set number
" Normal paste
set paste
set smartcase
set noshowmode
" So that we don't have to save between saves
set hidden
" }}}

" Folding {{{
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=syntax   " fold based on indent level
set modelines=1
" }}}

" Audio {{{
set visualbell
set noerrorbells 
" }}}

" Tabs {{{
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set colorcolumn=80
" }}}

" Spell Checking {{{
setlocal spell spelllang=en_us
hi SpellBad cterm=underline
" }}}

" Golang {{{
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
" }}}

" Bindings {{{
" Leader
let mapleader=","
nnoremap <leader>n :NERDTreeToggle<CR>
" Turn on spell checking
nnoremap <leader>s :set spell<CR>
" Switch on Print margin
nnoremap <leader>m :highlight ColorColumn ctermbg=black<CR>
" Cycle buffers
:nnoremap <Tab> :bnext<CR>
" Reverse cycle buffers
:nnoremap <S-Tab> :bprevious<CR>
" List buffers
:nnoremap <leader>t :ls<CR>
" Silver searcher
:nnoremap <leader>a :Ag<CR>
" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" Reload .vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" Goto last open buffer
nmap <silent> <leader>, :b#<CR>
" Write file as sudo if not sudo
cmap  w!! w !sudo tee % >
" }}}

" Searching {{{
" highlight matching [{()}]
set showmatch  
" Use Silver searcher rather than vim script to index for ctrlp
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" search as characters are entered
set incsearch 
" Should highlight all search results
set hlsearch  
set ignorecase
" }}}

" Navigation {{{

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
" }}}

" vim:foldmethod=marker:foldlevel=0
