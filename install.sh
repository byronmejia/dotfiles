#!/usr/bin/env bash

declare -a dependencies=("curl" "stow")

for i in "${dependencies[@]}"
do
	echo "Checking if installed: $i"
    if ! command -v "$i" &> /dev/null
    then
	    echo "Please install $i before running install script"
	    exit 1
    fi
    echo "Satisifed: $i"
done

printf "\n"

echo "Setting up neovim dependencies"
# Oh my Zsh
echo "Oh My Zsh"
$(sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)")

echo "OMZ status code: $?"

echo "Vim Plug"
$(sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
echo "OMZ status code: $?"

declare -a configs=("nvim" "tmux" "zsh")

for i in "${configs[@]}"
do
	echo "Symlinking $i"
	stow "$i"
done

printf "\n"

