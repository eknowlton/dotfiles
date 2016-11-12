# ruby stuff
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

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

# add android SDK from extdrnal to path
if [ -d "/Volumes/external" ]; then
  export ANDROID_HOME="/Volumes/external/AndroidSDK"
  export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/build-tools/24.0.2"
fi

# add mvim command
export VISUAL="mvim -f"

# favorite ll command
alias ll='ls -la'
