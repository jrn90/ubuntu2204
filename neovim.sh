#!/usr/bin/env bash 
#
# Install script for neovim

set -o errexit
set -o nounset
set -o pipefail

source common.sh

NEOVIM_DIR="${DOWNLOAD_DIR}"/neovim

print_info "Downloading Neovim"
git clone --quiet https://github.com/neovim/neovim "${NEOVIM_DIR}" >/dev/null

cd "${NEOVIM_DIR}"

print_info "Checking out v0.9.5"
git checkout v0.9.5 >/dev/null

print_info "Build release target"
make CMAKE_BUILD_TYPE=RelWithDebInfo >/dev/null

print_info "Installing Neovim"
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb >/dev/null
