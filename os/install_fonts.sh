#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
&& . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_fonts() {
    declare -r DIR_PATH="$HOME/.local/share/fonts"
    
    mkd "$DIR_PATH"
    
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    
    # Install fonts
    cp fonts/* ~/.local/share/fonts
    # fc-cache -vf ~/.local/share/fonts/
    
}


main() {
    print_in_purple "\n • Install fonts\n\n"
    install_fonts
}

main