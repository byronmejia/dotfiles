# Weird Flexes
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-completions zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias vi="nvim"
alias vimdiff='nvim -d'
export EDITOR=nvim

# Python
export MODIFY_PYFILES_IN_HOOK=1

# NODE & NPM
export NODE_OPTIONS=--max_old_space_size=12228
export DISABLE_OPENCOLLECTIVE=true # The NPM Community
export ADBLOCK=true # Why...

# Setup fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="${XDG_CONFIG_HOME:-$HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
