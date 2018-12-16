# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# Shortcuts
alias dl="cd ~/Downloads"
alias g="git"
alias h="history"
alias dev="cd ~/workspace"
alias e='exit'
alias cl='clear'
alias md="mkdir"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="pkill chrome"

# Color LS
alias lc='colorls -lA --sd'

