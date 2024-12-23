check_distro() {
    distro=$(get_distro)
    if [[ $? -eq 0 ]]; then
        clear
        echo "Detected distribution: $distro"
        echo "Is this correct? [y/n]"
        if [[ $1 == "fail" ]]; then
            echo -n "[ Invalid option! ] "
        fi
        option=$(input)

        case $option in
        y)
            OS=$distro
            $OS"_menu"
            ;;
        n)
            os_menu
            ;;
        *)
            check_distro "fail"
            ;;
        esac
    fi
}
