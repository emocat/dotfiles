" basic
syntax on
set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread                  " watch for file changes
set number                    " line numbers
set hidden
set noautowrite               " don't automagically write on :next
set nocompatible              " vim, not vi
" set autoindent 
set smartindent   
set smarttab                  " tab and backspace are smart
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=200
set backspace=indent,eol,start
set linebreak
set ttyfast                   " we have a fast terminal
set fileformats=unix
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins"
set wildmode=longest:full
set wildmenu                  " menu has tab completion
set t_Co=256

inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i

" searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync
set nobackup      


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1  " 顶部状态栏
let g:airline#extensions#tabline#buffer_nr_show = 1

Plug 'flazz/vim-colorschemes'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'

Plug 'jiangmiao/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'plasticboy/vim-markdown'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py'}

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'aperezdc/vim-template'

call plug#end()


set background=dark
colorscheme gruvbox


" Settings of IndentLine
" let g:indentLine_setColors = 0
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']


" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
" let g:ycm_min_num_identifier_candidate_chars = 3
" let g:SuperTabDefaultCompletionType = '<C-n>'
" let g:ycm_show_diagnostics_ui = 0
" let g:ycm_enable_diagnostic_signs = 0
" let g:ycm_enable_diagnostic_highlighting = 0
" set completeopt=menu,menuone
" let g:ycm_add_preview_to_completeopt = 0

