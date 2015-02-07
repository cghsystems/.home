" Syntax Highlighting
set term=builtin_ansi
filetype plugin indent on

syntax enable

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
