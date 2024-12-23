print_title() {
    local title="$1"
    local total_length=50
    local title_length=${#title}
    local padding_length=$((total_length - title_length - 2)) # 2 = espacios para los | en ambos lados

    if ((padding_length < 2)); then
        echo "Title is too long!"
        return 1
    fi

    local left_padding=$((padding_length / 2))
    local right_padding=$((padding_length - left_padding))

    local left_padding_str=$(printf "%-${left_padding}s" "-")
    local right_padding_str=$(printf "%-${right_padding}s" "-")

    clear
    echo "|${left_padding_str// /-}$title${right_padding_str// /-}|"
}
