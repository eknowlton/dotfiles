filetype plugin indent on 

set spell spelllang=en_us
set modifiable
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number 
set textwidth=0
set wrapmargin=0
set guifont=Monaco:h10
set clipboard=unnamed
set cursorline
set list
set listchars=trail:·,tab:··
set guioptions-=L
set guioptions-=r
set autoindent
set splitbelow
set splitright

set number
set relativenumber

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'alvan/vim-closetag'
Plugin 'scrooloose/syntastic'
Plugin 'mbbill/undotree'
Plugin 'gregsexton/MatchTag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'

set clipboard=unnamed

call vundle#end()
filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

syntax enable
set background=dark
let g:solarized_termcolors=256

colorscheme solarized

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"

let g:closetag_filenames = "*.html,*.htm,*.php"

autocmd StdinReadPre * let s:std_in=1

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=60

let g:ctrlp_working_path_mode=0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

let g:syntastic_php_checkers = ['php', 'phpcs --standard=PSR2']
let g:syntastic_html_checkers = ['html', 'twig', 'css', 'javascript']
let g:syntastic_css_checkers = ['css']

sign define SyntasticError text=⮀ texthl=error
sign define SyntasticWarning text=⮁ texthl=Pl58870000d0ff8700b
sign define SyntasticStyleError text=⮀ texthl=error
sign define SyntasticStyleWarning text=⮁ texthl=tPl58870000d0ff8700b

nnoremap <F5> :UndotreeToggle<cr>
noremap <F3> :NERDTreeToggle<cr>i

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" ignore some folders and files for CtrlP indexing
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " MacOSX/Linux

set grepprg=ag\ --nogroup\ --nocolor 

nnoremap <silent> t :CtrlP<cr>

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0

let g:ctrlp_user_command = ['ag %s --files-with-matches -g ""']
let g:ctrlp_user_command += ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

