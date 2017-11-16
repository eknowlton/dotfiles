" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'shougo/unite.vim'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'ervandew/supertab'
Plug 'francoiscabrol/ranger.vim'
Plug 'hecal3/vim-leader-guide'
Plug 'shougo/deoplete.nvim'
Plug 'rbgrouleff/bclose.vim'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/denite.nvim'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

Plug 'hecal3/vim-leader-guide'
Plug 'editorconfig/editorconfig-vim'

Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'leafgarland/typescript-vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'

" Initialize plugin system
call plug#end()
