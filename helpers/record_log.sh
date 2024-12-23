record_log() {
    local log_file="$1"
    local message="$2"
    mkdir -p ./logs

    echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" >>"./logs/$log_file.log"
}
