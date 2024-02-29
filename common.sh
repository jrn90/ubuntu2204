# Common for other scripts

print_info() {
	printf "\033[32m[INFO]\033[0m %s\n" "$1"
}

DOWNLOAD_DIR=/tmp/installs
print_info "Creating download directory"
mkdir -p "${DOWNLOAD_DIR}" >/dev/null
