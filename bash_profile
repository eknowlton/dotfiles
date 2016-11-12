export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
[[ -e ~/.common_profile ]] && emulate sh -c 'source ~/.common_profile'

