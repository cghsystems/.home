" Syntax Highlighting
set term=builtin_ansi
filetype plugin indent on

syntax enable
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

let g:hybrid_use_Xresources = 1
colorscheme hybrid
hi clear SignColumn
hi StatusLine ctermfg=Grey


let mapleader=","
set tabstop=2
set nu
set paste
set ignorecase
set smartcase
set noshowmode
" So that we don't have to save between saves
set hidden

set visualbell
set noerrorbells 

set expandtab
set shiftwidth=2
set softtabstop=2
set colorcolumn=80


" Spell Checking
setlocal spell spelllang=en_us
hi SpellBad cterm=underline

" go shortcuts`
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"

" Key bindings
nnoremap <leader>n :NERDTreeToggle<CR>
" Turn on spell checking
nnoremap <leader>s :set spell<CR>
" Switch on Print margin
nnoremap <leader>m :highlight ColorColumn ctermbg=black<CR>
"Cycle buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
"List buffers
:nnoremap <leader>t :ls<CR>

nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>, :b#<CR>
cmap  w!! w !sudo tee % >


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
set showmatch  " highlight matching [{()}]

" search as characters are entered
set incsearch 
" Should highlight all search results
set hlsearch  
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


call pathogen#infect()
