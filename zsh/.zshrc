# Weird Flexes
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
# Temporary remove all plugins
plugins=(git macos zsh-autosuggestions zsh-syntax-highlighting)
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
export RUSH_PNPM_STORE_PATH="$HOME/.rush-pnpm"

# Setup fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export N_PREFIX=~/.npm
export PATH=$PATH:~/.npm/bin

if [[ $OSTYPE == 'darwin'* ]]; then
    export OPENBLAS="$(brew --prefix openblas)"
    export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1
    export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1
    export CFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
    export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
fi


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/byronmejia/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/byronmejia/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/byronmejia/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/byronmejia/google-cloud-sdk/completion.zsh.inc'; fi
