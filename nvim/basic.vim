filetype plugin indent on
colorscheme brogrammer

set number
set relativenumber
set cursorline
set autoindent 
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowrap
set undofile

inoremap jk <ESC>

" use tab to backward cycle
inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<TAB>"

" Use deoplete
call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])

let g:deoplete#enable_at_startup = 1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
let g:deoplete#auto_complete_start_length = 3

autocmd FileType php setlocal omnifunc=phpcd#CompletePHP

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" use silversearcher in Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep --nogroup --nocolor --column'
endif

" Syntastic
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

if executable('ag')
	let g:ctrlp_user_command = ['ag %s --files-with-matches -g ""']
endif

if isdirectory('.git')
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
endif

" Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
set laststatus=2
let g:airline#extensions#tabline#show_splits = 1 "enable/disable displaying open splits per tab (only when tabs are opened). >
let g:airline#extensions#tabline#show_buffers = 1 " enable/disable displaying buffers with a single tab
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number

" closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php'

" Fugitive
" fix issue not getting commands
autocmd BufWinEnter * if empty(expand('<afile>')) | call fugitive#detect(getcwd()) | endif

" EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" vim gitgutter
let g:gitgutter_map_keys = 0

" PDV
let g:pdv_template_dir = $HOME . "/.config/nvim/plugged/pdv/templates_snip"

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Tests
let test#strategy = {
	\ 'nearest': 'neovim',
	\ 'file': 'neovim',
	\ 'suite': 'neovim'
\ }

function! VagrantTransform(cmd) abort
  let vagrant_project = get(matchlist(readfile('Vagrantfile'), '\vconfig\.vm.synced_folder ["''].+[''"], ["'']([^,"'']+)[''"]'), 1)
  return 'vagrant ssh --command '.shellescape('cd '.vagrant_project.'; '.a:cmd)
endfunction

let g:test#custom_transformations = {'vagrant': function('VagrantTransform')}
let g:test#transformation = 'vagrant'
