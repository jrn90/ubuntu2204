#!/usr/bin/env bash
#
# Install script for Ubuntu 22.04

set -o errexit
set -o nounset
set -o pipefail

print_info() {
	printf "\033[32m[INFO]\033[0m %s\n" "$1"
}

DOWNLOAD_DIR=/tmp/installs
print_info "Creating download directory"
mkdir -p "${DOWNLOAD_DIR}" >/dev/null

print_info "Running package update"
sudo apt-get update -qq >/dev/null

print_info "Installing a bunch of packages"
sudo apt-get install -y apt-transport-https \
  build-essential \
  curl \
  flatpak \
  gnome-screenshot \
  htop \
  libssl-dev \
  nmap \
  openssl \
  pkg-config \
  python-is-python3 >/dev/null

# Docker
print_info "Installing Docker"
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do 
  sudo apt-get remove -qq $pkg >/dev/null;
done
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh >/dev/null

# Rust
print_info "Installing Rust"
curl --silent --show-error --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y >/dev/null

# VSCode
print_info "Installing VSCode"
curl --silent --show-error --location "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" --output "${DOWNLOAD_DIR}"/vscode.deb
sudo apt-get install -qq -y "${DOWNLOAD_DIR}"/vscode.deb >/dev/null

print_info "DONE!"