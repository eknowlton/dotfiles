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
Plug 'francoiscabrol/ranger.vim'
Plug 'hecal3/vim-leader-guide'
Plug 'shougo/deoplete.nvim'
Plug 'rbgrouleff/bclose.vim'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/denite.nvim'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'arnaud-lb/vim-php-namespace'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }
Plug 'janko-m/vim-test'
Plug 'mattn/emmet-vim'
Plug 'neovim/python-client'
Plug 'vim-scripts/TaskList.vim'
Plug 'mklabs/split-term.vim'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'
Plug 'w0rp/ale'
Plug 'sbdchd/neoformat'
Plug 'ashisha/image.vim'

Plug 'hecal3/vim-leader-guide'
Plug 'editorconfig/editorconfig-vim'

Plug 'chase/vim-ansible-yaml'

Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'mxw/vim-jsx'
Plug 'carlitux/deoplete-ternjs'
Plug 'leafgarland/typescript-vim'

Plug 'othree/html5.vim'

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'zchee/deoplete-go', { 'do': 'make'}

Plug 'cakebaker/scss-syntax.vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'jwalton512/vim-blade'
Plug 'fishbullet/deoplete-ruby'
Plug 'tpope/vim-endwise'
Plug 'uplus/deoplete-solargraph'

Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'vim-php/tagbar-phpctags.vim'

Plug 'ujihisa/neco-look'

Plug 'tpope/vim-rails'

" Initialize plugin system
call plug#end()
