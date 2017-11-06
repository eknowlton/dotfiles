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
Plugin 'shougo/unite.vim'
Plugin 'mattn/emmet-vim'
Plugin 'alvan/vim-closetag'
Plugin 'yggdroot/indentline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'chrisbra/Colorizer'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-commentary'
Plugin 'mileszs/ack.vim'
Plugin 'janko-m/vim-test'
Plugin 'sirver/ultisnips'
Plugin 'tobys/vmustache'
Plugin 'joonty/vdebug'
Plugin 'ervandew/supertab'
Plugin 'thaerkh/vim-workspace'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'hecal3/vim-leader-guide'

" Language Specific
Plugin 'slim-template/vim-slim'
Plugin 'pangloss/vim-javascript'
Plugin 'stanangeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'vim-scripts/vim-php-namespace'
Plugin 'tobyS/pdv'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'vim-ruby/vim-ruby'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-ragtag'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'leafgarland/typescript-vim'

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
set relativenumber
colorscheme brogrammer
let mapleader=" "
set cursorline
set modifiable
set autoindent
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
inoremap jk <ESC>
set nowrap

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Set lazyredraw, speeds up navigation with syntax on
set lazyredraw

" use silversearcher in Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep --nogroup --nocolor --column'
endif

" Syntastic Default Settings
" https://github.com/vim-syntastic/syntastic#settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1

let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_html_checkers = ['html', 'twig', 'css', 'javascript']
let g:syntastic_css_checkers = ['css']

let g:syntastic_php_phpcs_args = '--standard=PSR2'

" Error symbols
let g:syntastic_error_symbol = "✗"
let syntastic_style_error_symbol = "✗"
let g:syntastic_warning_symbol = "∙∙"
let syntastic_style_warning_symbol = "∙∙"

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_user_command = ['ag %s --files-with-matches -g ""']
if isdirectory('.git')
    let g:ctrlp_user_command += ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
endif

" Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
set laststatus=2

" iTerm2 OSX different cursor for different modes
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php'

" IndentLine
"let g:indentLine_setColors = 0
"
" Fugitive
" fix issue not getting commands
autocmd BufWinEnter * if empty(expand('<afile>')) | call fugitive#detect(getcwd()) | endif

" EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" vim json
let g:vim_json_syntax_conceal = 0

" vim gitgutter
let g:gitgutter_map_keys = 0

" php documentor
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

" vdebug
let g:vdebug_options = {}
let g:vdebug_options['break_on_open'] = 0
let g:vdebug_options['port'] = 9000
let g:vdebug_options['server'] = ''

" LEADER KEY BINDINGS
call leaderGuide#register_prefix_descriptions("<space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<space>'<cr>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<space>'<cr>

let g:lmap = {}

"----- Workspace
let g:lmap.p = { 'name' : '+ Project',
			   \ 'w': { 'name' : '+ Workspace', 's' : ['ToggleWorkspace', 'Save Workspace'] },
			   \}
"----- Language
let g:lmap.l = { 'name' : '+ Language',
			   \ 't' : ['TagbarToggle', 'Tagbar'],
			   \ 'd' : ['call pdv#DocumentWithSnip()', 'Generate Docblock'],
			   \ 'u' : ['call PhpInsertUse()', 'Generate Use Statement'],
			   \}

"----- Ranger
let g:ranger_map_keys = 0

"----- Files
let g:lmap.f = { 'name' : '+ Files',
			 \ 'f' : ['CtrlP', 'Find Files (CtrlP)'],
			 \ 'r' : ['Ranger', 'Find Files (Ranger)'],
			 \ 's' : ['w', 'Save File'],
			 \ 'S' : ['wa', 'Save All Files'],
			 \ 'x' : ['x', 'Save & Close'],
			 \}

"----- Search
set nohls
set ignorecase
set hlsearch
set smartcase
set incsearch
nnoremap <Leader>/a :Ack!
let g:lmap['/'] = { 'name' : '+ Find In Project',
				  \ 'h' : ['set hlsearch!', 'Hightlight Search'],
				  \}

"----- Window
autocmd VimResized * :wincmd =
set splitbelow
set splitright
let g:lmap.w = { 'name' : '+ Windows',
			   \ 'd': ['close', 'Close Window'],
			   \ 's': ['split', 'Horizontal Split'],
			   \ 'v': ['vsplit', 'Vertical Split'],
			   \ 'h': ['wincmd h', 'Move Left'],
			   \ 'l': ['wincmd l', 'Move Right'],
			   \ 'j': ['wincmd j', 'Move Down'],
			   \ 'k': ['wincmd k', 'Move Up'],
			   \ 'o': ['wincmd o', 'Close Others'],
			   \ '=': ['wincmd =', 'Resize Equally'],
			   \}

" Buffer
let g:lmap.b = { 'name' : '+ Buffer',
               \ 'b' : [':CtrlPBuffer', 'Switch Buffers'],
               \ 'd' : ['bd', 'Delete Buffer'],
               \ 'l' : ['ls', 'List Buffers'],
               \ 'n' : ['bn', 'Next Buffer'],
               \ 'p' : ['bp', 'Previous Buffer'],
               \}

" Git
nnoremap <leader>gg :Git<space>
let g:lmap.g = { 'name' : '+ Git',
               \ 'a' : ['Gwrite', 'Git Add File'],
               \ 'b' : ['Gblame', 'Git Blame'],
               \ 'c' : ['Gcommit', 'Git Commit'],
               \ 'd' : ['Gdiff', 'Git Diff'],
               \ 'f' : ['Gfetch', 'Git Fetch'],
               \ 'F' : ['Gpull', 'Git Pull'],
               \ 'P' : ['Gpush', 'Git Push'],
               \ 'r' : ['Gread', 'Git Reset File'],
               \ 's' : ['Gstatus', 'Git Status'],
               \}

"----- Test
let g:lmap.t = { 'name' : '+ Testing',
			   \ 't' : 'Test to Cursor',
			   \ 'f' : 'Run Test File',
			   \ 'a' : 'Run All Tests',
			   \ 'l' : 'Run Last Test',
			   \}

" Quit
let g:lmap.q = { 'name' : '+ Quit',
               \ 'q' : ['qa', 'Quit All'],
               \ 'Q' : ['qa!', 'Force Quit All'],
               \}

" Include Local vimrc
if filereadable(expand("~/.vimrc.local"))
	source ~/.vimrc.local
endif

