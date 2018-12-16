#!/bin/bash

# ----------------------------------------------------------------------
# | Main                                                               |
# ----------------------------------------------------------------------
main() {
    # Ensure that the following actions
    # are made relative to this file's path.
    
    cd "$(dirname "${BASH_SOURCE[0]}")" \
    || exit 1
    
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # Load utils
    . "utils.sh" || exit 1
    
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    
    skip_questions "$@" \
    && skipQuestions=true
    
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    
    ./create_symbolic_links.sh "$@"
    
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    
    ./create_local_config_files.sh
    
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    
    ./install/main.sh
    
}

main "$@"
