call plug#begin()

Plug 'preservim/nerdcommenter'
filetype plugin on

Plug 'preservim/nerdtree'

Plug 'airblade/vim-gitgutter'

Plug 'cocopon/iceberg.vim'

call plug#end()



" PlugInstall



" Disable compatibility mode
set nocompatible

" Enables automatic indentation based on the file type
filetype indent on

" Enable syntax highlighting
syntax on

" Enable line numbers
set number

" Use spaces for indentation (4 spaces)
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4

" Search case-insensitive by default
set ignorecase

" Search highlights matches as you type
set incsearch

" Disable mouse interaction in normal mode
set mouse=""

" Show the command being executed at the bottom
set showcmd

" Improve formatting options for comments
set formatoptions=croq

" Don't automatically wrap lines
set textwidth=0

" Shows a vertical ruler at the configured column (default at 80)
set ruler

" Highlights the current line
set cursorline 

"Set the colorscheme to "iceberg"
try
    colorscheme iceberg
    hi Normal guibg=NONE ctermbg=NONE
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
    set background=dark
endtry
