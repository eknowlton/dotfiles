call plug#begin('~/.vim/plugged')

Plug 'hecal3/vim-leader-guide'

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

Plug 'Shougo/denite.nvim'
Plug 'kien/ctrlp.vim'

Plug 'w0rp/ale'

Plug 'francoiscabrol/ranger.vim' | Plug 'rbgrouleff/bclose.vim'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

Plug 'alvan/vim-closetag'

Plug 'kassio/neoterm'
Plug 'janko-m/vim-test'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

Plug 'othree/csscomplete.vim'

Plug 'elixir-editors/vim-elixir'

let b:ale_fixers = ['prettier']

" Initialize plugin system
call plug#end()

