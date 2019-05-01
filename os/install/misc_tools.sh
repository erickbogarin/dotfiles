#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
&& . "../utils.sh" \
&& . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

install_package "cURL" "curl"
install_package "wget" "wget"
install_package "ShellCheck" "shellcheck"
install_package "xclip" "xclip"
install_package "apt-transport-https" "apt-transport-https"
install_package "language-pack-en" "language-pack-en"
install_package "pip for Python 2" "python-pip"

execute "pip install --user git+git://github.com/Lokaltog/powerline -q" "Powerline (Install)"
execute "pip install --user git+git://github.com/Lokaltog/powerline -q" "Powerline (Install)"