colorscheme brogrammer

set number
set relativenumber
set cursorline
set undofile
set autoread
set expandtab
set smartindent

autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript.tsx setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2

inoremap jk <Esc>
tnoremap <Esc> <C-\><C-n>

set clipboard+=unnamedplus

let g:ale_completion_enabled = 1

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"

let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['prettier'],
\ 'typescript': ['prettier'],
\ 'typescript.jsx': ['prettier'],
\}

let g:ale_linters = {
\ 'typescript': ['tslint'],
\ 'typescript.tsx': ['tslint']
\ }

let g:ale_fix_on_save = 1

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb,*.tsx'

let test#strategy = "neoterm"

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
