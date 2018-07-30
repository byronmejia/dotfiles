export ZSH="/Users/byronmejia/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Aliases - stored in bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

plugins=(git virtualenv zsh-completions kubectl zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/byronmejia/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/byronmejia/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/byronmejia/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/byronmejia/google-cloud-sdk/completion.zsh.inc'; fi
