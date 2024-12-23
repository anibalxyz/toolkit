fedora_menu() {
    print_title "Fedora menu"
    echo "Select an option:"
    echo "1. Stack (MERN, MEAN, LAMP, etc)"
    echo "2. Devtools"
    echo "3. Return"
    echo "4. Exit"
    option=$(input)

    case $option in
    1)
        stack_menu
        ;;
    2)
        devtools_menu
        ;;
    3)
        os_menu
        ;;
    4)
        exit 0
        ;;
    *)
        echo "Invalid option"
        fedora_menu
        ;;
    esac
}
