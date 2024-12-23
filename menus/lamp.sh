lamp_menu() {
    print_title "LAMP menu"
    echo "Select an option:"
    echo "1. Install LAMP stack"
    echo "2. Install Apache"
    echo "3. Install MySQL"
    echo "4. Install PHP"
    echo "5. Install phpMyAdmin"
    echo "6. Return"
    echo "7. Exit"
    option=$(input)

    case $option in
    1)
        install_lamp
        ;;
    2)
        install_apache
        ;;
    3)
        install_mysql
        ;;
    4)
        install_php
        echo "Press any key to continue..."
        read -n 1 -s
        ;;
    5)
        install_phpmyadmin
        ;;
    6)
        stack_menu
        ;;
    7)
        exit 0
        ;;
    *)
        echo "Invalid option"
        lamp_menu
        ;;
    esac

    lamp_menu
}
