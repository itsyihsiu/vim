" Run :PlugInstall to install all plugins

call plug#begin()

Plug 'preservim/nerdcommenter' " \c<Space> Toggle comments on the selected lines
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'cocopon/iceberg.vim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" FZF settings
set rtp+=~/.fzf
"nnoremap <C-f> :Files<CR>

" Set encoding and file formats
set encoding=utf-8
set fileencoding=utf-8
set fileformats=unix,dos,mac

" Line numbers and relative numbers
set number

" Syntax highlighting and ColorScheme
silent! colorscheme iceberg
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
autocmd ColorScheme * highlight NonText ctermbg=NONE guibg=NONE
autocmd ColorScheme * highlight Folded ctermbg=NONE guibg=NONE
autocmd ColorScheme * highlight EndOfBuffer ctermbg=NONE guibg=NONE
syntax on

" Indentation settings
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Display settings
set wrap
set cursorline

" Move the cursor to the last position when reopening a file
if has("autocmd")
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif




" Disable compatibility mode
set nocompatible

" Enables automatic indentation based on the file type
filetype indent on

" Enable syntax highlighting


" Use spaces for indentation (4 spaces)

" Search case-insensitive by default

" Search highlights matches as you type

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


