
" Plugins
source ~/.config/nvim/plugins.vim

" Config
source ~/.config/nvim/basic.vim

" Leader Guide
source ~/.config/nvim/leader.vim

" Source Project VIM Config
if filereadable(".vimrc.local")
    source .vimrc.local
endif
