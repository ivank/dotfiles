call plug#begin('~/.vim/plugged')

Plug 'https://github.com/vim-scripts/ScrollColors'  "ScrollBar Colors
Plug 'tpope/vim-surround'   "Awesome, cs{old}{new} to change surround
Plug 'scrooloose/nerdtree'  "Nerdtree
Plug 'ervandew/supertab'    "Tab for insert-completion
Plug 'jpo/vim-railscasts-theme'
Plug 'bling/vim-airline'    "Airline


call plug#end()

filetype plugin on       " load file type plugins + indentation

set nu
syntax on
set nocompatible                " choose no compatibility with legacy vi
set encoding=utf-8
set laststatus=2 
set showcmd
set wildmenu
set foldenable

" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Colorscheme
colorscheme railscasts
let &t_Co=256

let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
set guifont=Ubuntu\ Mono\ derivative\ Powerline

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
