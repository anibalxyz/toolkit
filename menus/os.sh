os_menu() {
    print_title "Main menu"
    echo "Select your OS:"
    echo "1. Fedora"
    echo "2. Ubuntu"
    echo "3. Exit"
    option=$(input)

    case $option in
    1)
        fedora_menu
        ;;
    2)
        ubuntu_menu
        ;;
    3)
        exit 0
        ;;
    *)
        echo "Invalid option"
        os_menu
        ;;
    esac
}
