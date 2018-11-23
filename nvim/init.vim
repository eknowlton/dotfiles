source ~/.config/nvim/plugins.vim
source ~/.config/nvim/basic.vim
source ~/.config/nvim/leader.vim

if filereadable("~/.vimrc")
    source ~/.vimrc
endif

if filereadable(".vimrc")
    source .vimrc
endif
