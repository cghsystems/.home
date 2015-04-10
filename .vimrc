" Syntax Highlighting
set term=builtin_ansi
filetype plugin indent on

syntax enable

let g:hybrid_use_Xresources = 1
colorscheme hybrid

call pathogen#infect() 


let mapleader=","
set tabstop=2
set nu
set paste
set ignorecase
set smartcase

set visualbell
set noerrorbells 

set expandtab
set shiftwidth=2
set softtabstop=2

" go shortcuts`
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"

" Key bindings

nnoremap <leader>n :NERDTreeToggle<CR>

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
set statusline=%{fugitive#statusline()}\ %f%m%r\ %y\ %=[%l,%v]\ [:%L] 

" Set status bar to Red in insert mode
au InsertEnter * hi StatusLine ctermfg=Red
au InsertLeave * hi StatusLine ctermfg=Grey

" So that we don't have to save between saves
set hidden

