" color desert

" Format {{{
set nu			        " 显示行号
set backspace=2
set tabstop=4	        " TAB缩进
set shiftwidth=4
set expandtab
set smarttab
set autoindent          " 自动对齐
set smartindent         " 智能缩进
set foldmethod=marker   " 折叠
syntax on               " 语法高亮
" }}}


set nocompatible    " 去除vi的一致性
set nobackup        " 去除备份


" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" beautify {{{
" airline-setting {{{
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1  " 顶部状态栏
" let g:airline#extensions#tabline#buffer_nr_show = 1
" }}}
" theme-setting {{{
Plug 'flazz/vim-colorschemes'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
" }}}
"中文帮助文档
Plug 'yianwillis/vimcdoc'
" }}}

"括号补全
Plug 'jiangmiao/auto-pairs'
"Tab显示
Plug 'yggdroot/indentline'
"Markdown支持
Plug 'plasticboy/vim-markdown'
"YCM
Plug 'Valloric/YouCompleteMe', { 'do': './install.py'}

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'aperezdc/vim-template'


" Initialize plugin system
call plug#end()

set background=dark
" colorscheme gruvbox


" Settings of IndentLine
" let g:indentLine_setColors = 0
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']


let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_min_num_identifier_candidate_chars = 3
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0

