set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'ntpeters/vim-airline-colornum'
Plugin 'airblade/vim-gitgutter'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'shougo/neocomplete.vim'
Plugin 'mattn/emmet-vim'
Plugin 'alvan/vim-closetag'
Plugin 'yggdroot/indentline'

" Language Specific
Plugin 'slim-template/vim-slim'
Plugin 'pangloss/vim-javascript'
Plugin 'stanangeloff/php.vim'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'vim-ruby/vim-ruby'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-ragtag'
Plugin 'ekalinin/dockerfile.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" VIM Settings
syntax on
set number
colorscheme default

set modifiable
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set backspace=indent,eol,start

" Syntastic Default Settings
" https://github.com/vim-syntastic/syntastic#settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_php_checkers = ['php', 'phpcs --standard=PSR2']
let g:syntastic_html_checkers = ['html', 'twig', 'css', 'javascript']
let g:syntastic_css_checkers = ['css']

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

nmap <Leader>b :CtrlPBuffer<CR>

let g:ctrlp_user_command = ['ag %s --files-with-matches -g ""']
if isdirectory('.git')
    let g:ctrlp_user_command += ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
endif

" Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
set laststatus=2

" Neocomplete
let g:neocomplete#enable_at_startup = 1

" iTerm2 OSX different cursor for different modes
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
