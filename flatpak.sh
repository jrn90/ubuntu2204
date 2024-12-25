#!/usr/bin/env bash 
# 
# Flatpak installs

source common.sh

# Add the remote repo before installs
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo >/dev/null

print_info "Installing Discord"
# Install Discord
flatpak install --user --noninteractive flathub com.discordapp.Discord >/dev/null

print_info "Installing Lutris"
# Install Lutris
flatpak install --user --noninteractive flathub net.lutris.Lutris >/dev/null

print_info "Installing Spotify"
# Install Spotify 
flatpak install --user --noninteractive flathub com.spotify.Client >/dev/null

print_info "Installing Stremio"
# Install Stremio
flatpak install --user --noninteractive flathub com.stremio.Stremio >/dev/null
