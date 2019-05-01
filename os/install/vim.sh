#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
&& . "../utils.sh" \
&& . "utils.sh"

declare -r VUNDLE_VIM_GIT_DIRECTORY="$HOME/.vim/bundle/Vundle.vim"
declare -r VUNDLE_VIM_GIT_REPO_URL="https://github.com/VundleVim/Vundle.vim.git"

install_vundle_vim() {
    execute \
    "git clone --quiet $VUNDLE_VIM_GIT_REPO_URL $VUNDLE_VIM_GIT_DIRECTORY" \
    "Vundle.vim (install)"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    print_in_purple "\n   Vim\n\n"
    
    install_package "GNOME Vim" "vim-gnome"
    
    install_vundle_vim
}