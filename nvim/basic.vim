colorscheme brogrammer

set number
set relativenumber
set cursorline
set undofile
set autoread
set expandtab
set smartindent
set nocompatible

autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType sh setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript.tsx setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType php setlocal ts=4 sts=4 sw=4
autocmd FileType cpp setlocal ts=4 sts=4 sw=4

inoremap jk <Esc>
tnoremap <Esc> <C-\><C-n>

set clipboard+=unnamedplus

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"

let g:ale_set_highlights = 0
let g:ale_ruby_standardrb_options = '--rails'

let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['prettier'],
\ 'typescript': ['prettier'],
\ 'typescript.jsx': ['prettier'],
\ 'sh': ['shfmt'],
\ 'ruby': ['standardrb'],
\}

let g:ale_linters = {
\ 'typescript': ['tslint', 'tsserver', 'typecheck'],
\ 'typescript.tsx': ['tslint', 'tsserver', 'typecheck'],
\ 'ruby': ['standardrb', 'rails_best_practices', 'brakeman', 'reek']
\ }

let g:ale_php_langserver_use_global = 1
let g:ale_php_langserver_executable = $HOME.'/.composer/vendor/bin/php-language-server.php'

let g:ale_fix_on_save = 1

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb,*.tsx'

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

if executable('/bin/python2')
    let g:python_host_prog  = '/bin/python2'
end

if executable('/bin/python3')
    let g:python3_host_prog = '/bin/python3'
end

if isdirectory('.git')
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
endif
