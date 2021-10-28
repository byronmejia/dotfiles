# Weird Flexes
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias vi="nvim"
alias vimdiff='nvim -d'
export EDITOR=nvim

# Python
export MODIFY_PYFILES_IN_HOOK=1

# Python is Python
alias python=python3

# NODE & NPM
export NODE_OPTIONS=--max_old_space_size=12228
export DISABLE_OPENCOLLECTIVE=true # The NPM Community
export ADBLOCK=true # Why...

# Setup fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
