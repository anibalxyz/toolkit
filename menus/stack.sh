stack_menu() {
    print_title "Stack menu"
    echo "Select a stack:"
    echo "1. MERN"
    echo "2. MEAN"
    echo "3. LAMP"
    echo "4. Return"
    echo "5. Exit"
    option=$(input)

    case $option in
    1)
        install_mern
        ;;
    2)
        install_mean
        ;;
    3)
        lamp_menu
        ;;
    4)
        $OS"_menu"
        ;;
    5)
        exit 0
        ;;
    *)
        echo "Invalid option"
        stack_menu
        ;;
    esac
}
