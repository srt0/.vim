""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" simple .vimrc configuration
"
" Name          -> Saikat Ray Tapu
" Email         -> saikat.tapu@gmail.com
" GitHub        -> srt0
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible                " set not compatible with vi
set history=1000                " lines for vim to remember

" load filetype-specific indent files
filetype on
filetype indent on
filetype plugin on

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Installed Plugins 
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/peaksea'
Plug 'trevordmiller/nova-vim'
Plug 'cormacrelf/vim-colors-github'
Plug 'mattn/emmet-vim'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'rust-lang/rust.vim'

" Initialize plugin system
call plug#end()

" CtrlP config
let g:ctrlp_use_caching = 0
let g:ctrlp_match_window_reversed = 0

" set to auto read when a file is changed from the outside
set autoread

"set mapleader
let mapleader = "\<Space>"


" Activate the NERDTree when launching vim
"autocmd vimenter * NERDTree

" Toggle NERDTree
nmap <leader>n :NERDTreeToggle<cr>

" Save Fast
nmap <leader>w :w!<cr>

" reload vimrc
"nnoremap <leader>sr :source $MYVIMRC<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""

set showmode                    " show current mode
set ruler                       " display cursor position
set number                      " show line numbers

" turn on the wild menu
set wildmenu

" ignore compiled files
set wildignore=*.o,*~,*.pyc,.git\*,.hg\*,.svn\*

" highlight current line
" set cursorline

" lots of red columns. April Fool.
"highlight ColorColumn ctermbg=red ctermfg=blue
"exec 'set colorcolumn=' . join(range(2,80,3), ',')

" notify when line has over 80 chars
"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%81v', 100)

set showmatch                   " highlight matching
set incsearch                   " search as chars are entered
set hlsearch                    " highlight matches
set ignorecase                  " ignore case while searching
set smartcase                   " smart about case while searching
set showcmd                     " show command in bottom bar
set hidden                      " buffer is hidden when abandoned

" allow backspacing over everything in insert mode
"set backspace=eol,start,indent
set bs=2

set gcr=a:blinkon0              " disable cursor blink    

" keep at least 5 lines above/below
set scrolloff=5

" keep at least 5 lines left/right
set sidescrolloff=5

set guioptions-=m               " disable menu bar
set guioptions-=T               " disable tool bar
set guioptions-=e               " get terminal-like tab

" disable scrollbar on the right
set guioptions-=r
set guioptions-=R

" disable scrollbar on the left
set guioptions-=l
set guioptions-=L

" no annoying sound of errors
set noerrorbells
set novisualbell
set t_vb=
set timeout timeoutlen=200 ttimeoutlen=100

" in many terminal emulators the mouse works just fine, thus enable it
set mouse=a

" y and d put stuff into system clipboard
set clipboard=unnamed,unnamedplus

" <F12> toggles paste mode
"set pastetoggle=<F12>

"set laststatus=2


""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set encoding=utf8
"set guifont=iosevka\ term\ Semibold\ 13 
set guifont=hack\ 12

" colorscheme
if has("gui_running")
    set antialias
    set t_Co=256
    "set background=dark
    "color gruvbox
    "let g:gruvbox_contrast_dark = 'soft'
    color dracula

    "colorscheme github
    "colorscheme nova
    "colorscheme peaksea
endif

" space between lines in pixel
set linespace=5

" enable all Python syntax highlighting features
"let python_highlight_all = 1


""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""
" turn backup off
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""
" => text, tap and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " space instead of tab
set smarttab                    " be smart when using tabs

set shiftwidth=4                " shift width 4 spaces
set tabstop=4                   " visual spaces per tab
set softtabstop=4               " number of spaces in tab

set autoindent
set smartindent
set wrap
"set textwidth=79

"-------------- Split Management -----------"
set splitbelow
set splitright

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => remapped keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" semi-colon is colon
nnoremap ; :

" jj is escape
inoremap jj <esc>

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" split window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tab nevigation
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap to :tabclose<CR>

" THE END
