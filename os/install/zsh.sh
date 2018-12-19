#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
&& . "../utils.sh" \
&& . "utils.sh"

declare -r POWERLEVEL9K_GIT_DIRECTORY="$HOME/.oh-my-zsh/custom/themes/powerlevel9k"
declare -r POWERLEVEL9K_GIT_REPO_URL="https://github.com/bhilburn/powerlevel9k.git"

declare -r OH_MY_ZSH_GIT_DIRECTORY="$HOME/.oh-my-zsh"
declare -r OH_MY_ZSH_GIT_REPO_URL="https://github.com/robbyrussell/oh-my-zsh.git"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_powerlevel9k() {
    execute \
    "git clone --quiet $POWERLEVEL9K_GIT_REPO_URL $POWERLEVEL9K_GIT_DIRECTORY" \
    "Oh My ZSH (install)"
}

install_oh_my_zsh() {
    execute \
    "git clone --quiet $OH_MY_ZSH_GIT_REPO_URL $OH_MY_ZSH_GIT_DIRECTORY" \
    "Oh My ZSH (install)"
}

update_oh_my_zsh() {
    execute \
    "upgrade_oh_my_zsh" \
    "Oh My ZSH (update)"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    print_in_purple "\n   ZSH\n\n"
    
    install_package "ZSH" "zsh"
    
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    
    if [ ! -d "$OH_MY_ZSH_GIT_DIRECTORY" ]; then
        install_oh_my_zsh
    else
        update_oh_my_zsh
    fi
    
    if [ ! -d "$POWERLEVEL9K_GIT_DIRECTORY" ]; then
        install_powerlevel9k
    fi
    
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    
    # Inizialize zsh and changes to the default shell.
    if cmd_exists "zsh"; then
        zsh && source $HOME/.zshrc && chsh -s /bin/zsh
    else
        print_error "(Zsh) Terminal not available"
    fi
}

main
