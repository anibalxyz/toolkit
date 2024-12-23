devtools_menu() {
    print_title "Devtools menu"
    echo "Select a devtool:"
    echo "1. Git"
    echo "2. Node.js"
    echo "3. Python"
    echo "4. Return"
    echo "5. Exit"
    option=$(input)

    case $option in
    1)
        install_git
        ;;
    2)
        install_nodejs
        ;;
    3)
        install_python
        ;;
    4)
        $OS"_menu"
        ;;
    5)
        exit 0
        ;;
    *)
        echo "Invalid option"
        devtools_menu
        ;;
    esac
}
