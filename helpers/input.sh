input() {
    local message="${1:-Option: }"
    echo -n "$message" >&2
    read -n 1 option
    clear >&2
    echo $option
}
