#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
&& . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    print_in_purple "\n • Installs\n\n"
    
    update
    upgrade
    
    ./build-essentials.sh
    ./git.sh
    ./misc.sh
    ./misc_tools.sh
    ./nvm.sh
    ./yarn.sh
    ./tmux.sh
    ./vim.sh
}

main
