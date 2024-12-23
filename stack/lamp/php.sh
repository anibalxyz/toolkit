install_php() {
    case $OS in
    ubuntu)
        sudo apt install -y php libapache2-mod-php php-mysql
        ;;
    fedora)
        # Store the output even printing it to the terminal
        output=$(sudo dnf install -y php php-mysqlnd php-mbstring php-xml 2>&1 | tee /dev/tty)
        status=$?

        if [[ $status -ne 0 ]]; then

            if echo "$output" | grep -q "No match for argument"; then
                msj="Package not found."
            elif echo "$output" | grep -q "Error: Unable to find a match"; then
                msj="Unable to find package match."
            elif echo "$output" | grep -q "Error: Problem with the installed package"; then
                msj="Dependency issues encountered."
            else
                msj="Unknown error occurred\n: $output"
            fi
            record_log "error" "$msj"
        else
            if echo "$output" | grep -q "already installed"; then
                record_log "warning" "PHP is already installed."
            elif echo "$output" | grep -q "incorrect password"; then
                record_log "error" "Incorrect password."
            else
                record_log "install" "PHP installed successfully."
            fi
        fi
        ;;
    *)
        exit 1
        ;;
    esac
}
