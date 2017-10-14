# ruby stuff
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# add composer to path
if [ -d "$HOME/.composer/vendor/bin" ]; then
  export PATH="$PATH:$HOME/.composer/vendor/bin"
fi

# add bin from home directory
if [ -d "$HOME/.bin" ]; then
  export PATH="$PATH:$HOME/.bin"
fi

# add usr bin to path
if [ -d "/usr/local" ]; then
  export PATH="$PATH:/usr/local/bin:/usr/local/sbin"
fi

# add mvim command
export VISUAL="vim -f"

# favorite ll command
alias ll='ls -la'
