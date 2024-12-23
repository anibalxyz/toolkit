install_nvim() {
    case $OS in
    "ubuntu")
        sudo apt-get install -y neovim
        ;;
    "fedora")
        sudo dnf install -y neovim
        ;;
    *)
        echo "OS not supported"
        ;;
    esac
}
