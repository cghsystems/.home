" Syntax Highlighting
set term=builtin_ansi
filetype plugin indent on

syntax enable
" set background=dark
" colorscheme solarized
" let g:solarized_termcolors=256

call pathogen#infect() 

set tabstop=2
set nu
set paste

" set runtimepath^=~/.vim/bundle/ctrlp.vim

set expandtab
set shiftwidth=2
set softtabstop=2

let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
