#!/bin/bash

load_scripts() {
    local dir="$1"
    local pattern="$2"

    for file in $dir/$pattern; do
        if [[ -f "$file" ]]; then
            source "$file"
        fi
    done
}

# Enable '**'
shopt -s globstar
# Clean screen on exit
trap "clear" EXIT

load_scripts "./helpers" "*.sh"
load_scripts "./menus" "*.sh"
load_scripts "./stack" "**/*.sh"

check_distro
