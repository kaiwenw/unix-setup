let mapleader = "m"
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

vmap '' :w !pbcopy<CR><CR>

set number
set history=500
filetype plugin on
filetype indent on

set autoread
set so=7

set wildmenu
set wildignore=*.o,*~,*.pyc
set ruler
set cmdheight=2
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase
set hlsearch
set lazyredraw
set magic
set showmatch

set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable
set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set lbr
set tw=500
set ai
set si
set wrap
set linebreak
set showbreak=>\ \ \

"set colorcolumn=80

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

map 0 ^

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'valloric/YouCompleteMe'
" let g:ycm_global_ycm_extra_conf = '/Users/kevinwang/.vim/bundle/YouCompleteMe/.ycm_c-c++_conf.py'

Plugin 'scrooloose/nerdcommenter'

Plugin 'christoomey/vim-system-copy'

Plugin 'fisadev/vim-isort'
"let g:vim_isort_map = '<C-i>'
"let g:vim_isort_python_version = 'python3.7'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set clipboard=unnamed
