let g:python3_host_prog = '~/.pyenv/shims/python3'
let g:python3_host_skip_check = 1
let g:python_host_prog = '~/.pyenv/shims/python'
let g:python_host_skip_check = 1
set clipboard+=unnamedplus

set nocompatible
filetype off

call plug#begin("~/.nvim/bundle")

Plug 'morhetz/gruvbox'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

call plug#end()

scriptencoding utf-8
set fileencoding=utf-8

set so=10
set number
syntax on
filetype on
filetype plugin on
filetype indent on

set modeline

set t_Co=256
set background=dark
"let g:gruvbox_italicize_comments=0
colorscheme gruvbox
let g:airline_theme='gruvbox'

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

set number
set showcmd
set mouse=a
set cursorline

set nobackup
set nowritebackup

set nowrap

set backspace=indent,eol,start

set undofile
set undodir=$HOME/.config/nvim/undo

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

inoremap ''; '';<esc>hi
inoremap '' ''<esc>i
inoremap ""; "";<esc>hi
inoremap "" ""<esc>i
inoremap (( ()<esc>i
inoremap ((; ();<esc>hi
inoremap [[ []<esc>i
inoremap [[; []<esc>hi
inoremap {{ {<cr>}<esc>ki<right><cr>
inoremap {{; {<cr>};<esc>ki<right><cr>

" Use deoplete.
let g:deoplete#enable_at_startup = 1

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

let g:go_auto_sameids = 1

let g:go_auto_type_info = 1

" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

"let g:go_fmt_options = '-tabs=false -tabwidth=4'
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_disable_autoinstall = 1
let g:go_play_open_browser = 0
