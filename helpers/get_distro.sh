get_distro() {
    if [[ -f /etc/os-release ]]; then
        source /etc/os-release
        local distro_name=$(echo $NAME | cut -d ' ' -f 1 | tr '[:upper:]' '[:lower:]')
        echo $distro_name
    else
        return 1
    fi
}
