ubuntu_menu() {
    print_title "Ubuntu menu"
    echo "Select an option:"
    echo "1. Stack (MERN, MEAN, LAMP, etc)"
    echo "2. Devtools"
    echo "3. Return"
    echo "4. Exit"
    option=$(input)

    case $option in
    1)
        stack_menu "ubuntu"
        ;;
    2)
        devtools_menu "ubuntu"
        ;;
    3)
        os_menu
        ;;
    4)
        exit 0
        ;;
    *)
        echo "Invalid option"
        ubuntu_menu
        ;;
    esac
}
