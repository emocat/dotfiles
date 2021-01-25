" basic
syntax on
set ruler                     " show the line and column number of the cursor position
set autoread                  " watch for file changes
set number                    " line numbers
set relativenumber            " relative line number
set noautowrite               " don't automagically write on :next
set nocompatible              " vim, not vi
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=200
set backspace=indent,eol,start
set linebreak
set fileformats=unix
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins
set wildmode=longest:full
set wildmenu                  " menu has tab completion
set t_Co=256                  " number of color

" tab
set tabstop=4                 " number of spaces that a <Tab> in the file counts for
set shiftwidth=4              " number of spaces to use for each step of (auto)indent
set expandtab                 " use the appropriate number of spaces to insert a <Tab>
set smarttab                  " when on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'

" indent
set autoindent                " copy indent from current line when starting a new line
set smartindent               " do smart autoindenting when starting a new line, such as indent around '{}'

" search
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync  

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
    let g:lightline = {'colorscheme': 'srcery_drk'}
    set laststatus=2              " always show status line
    set noshowmode                " don't show mode on the last line"

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tomasr/molokai'
Plug 'jiangmiao/auto-pairs'

if has('patch-8.1.2269')
    Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --clangd-completer' }
else
    Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --clangd-completer', 'commit':'d98f896' } 
endif

Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'aperezdc/vim-template'
let g:templates_directory = ['~/.dotfiles/templates/']

call plug#end()

if has("termguicolors")
    " fix bug for vim
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

    " enable true color
    set termguicolors
endif

set background=dark
set cursorline

colorscheme molokai
" colorscheme dracula

" YouCompleteMe config
" --------------------
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>'] 
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_key_select_completion = '<C-l>'

let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_min_num_identifier_candidate_chars = 2

" close diagnostics
let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0

" close preview
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0

" change color theme
highlight PMenu ctermfg=0 ctermbg=222 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=15 ctermbg=8 guifg=darkgrey guibg=black

" --------------------

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" clipboard support
if has("clipboard")
	set clipboard=unnamed " copy to the system clipboard

	if has("unnamedplus") " X11 support
		set clipboard+=unnamedplus
	endif
endif

let g:UltiSnipsSnippetDirectories=[$HOME.'/.dotfiles/snippets']

