# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# Setting ZSH Theme for Powerline9k
#ZSH_THEME="powerlevel9k/powerlevel9k"

# START Powerline9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator user dir_writable dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs command_execution_time background_jobs time ram disk_usage)
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_USER_ICON="\uF415" # 
POWERLEVEL9K_ROOT_ICON="\uF09C"
#POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
#POWERLEVEL9K_VCS_GIT_ICON='\uF408 '
#POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF408 '
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_MODE='nerdfont-complete'
# END Ponwerlin9k
#
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

# Simple Themes
#ZSH_THEME="gallois"
#ZSH_THEME="kphoen"
#ZSH_THEME="nanotech"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git laravel5 rails bundler composer common-aliases tmux)

# User configuration

# export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/ethan/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

#if [[ -n "$SSH_CONNECTION" ]]; then
#  PROMPT='[%m]%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%} : %{$fg[blue]%}%B%3c/%b%{$reset_color%} $(git_prompt_info)%(!.#.$) '
#else
#  PROMPT='%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%} : %{$fg[blue]%}%B%3c/%b%{$reset_color%} $(git_prompt_info)%(!.#.$) '
#fi

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#  export EDITOR='vim'
# else
#  export EDITOR='mvim'
# fi
#

export EDITOR='nvim'
export VISUAL='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ll='ls -la'
alias vim='nvim'
alias v='vim'

if [ -e "$HOME/.fzf_aliases" ]; then
    source ~/.fzf_aliases
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# source local zshrc for unix/linux
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

if [ -d $HOME/bin ]; then
    export PATH="$PATH:$HOME/bin"
fi

if [ -d $HOME/.aliases ]; then
    for file in $HOME/.aliases; do
        source file
    done
fi

if [ -d $HOME/go ]; then
    export GOPATH=$HOME/go
    export PATH=$PATH:$GOPATH/bin
fi

export PATH="/usr/local/sbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ethanknowlton/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ethanknowlton/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ethanknowlton/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ethanknowlton/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

if [ -d $HOME/.asdf ]; then
    . $HOME/.asdf/asdf.sh
    . $HOME/.asdf/completions/asdf.bash
fi

export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/libiconv/bin:$PATH"

eval "$(direnv hook zsh)"
