#!/usr/bin/env bash
#
# Installs VSCode extensions

source common.sh

set -o errexit
set -o nounset
set -o pipefail

code --install-extension adpyke.vscode-sql-formatter
code --install-extension catppuccin.catppuccin-vsc
code --install-extension christian-kohler.path-intellisense
code --install-extension mechatroner.rainbow-csv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-dotnettools.csdevkit
code --install-extension ms-dotnettools.csharp
code --install-extension ms-dotnettools.vscode-dotnet-runtime
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.makefile-tools
code --install-extension pkief.material-icon-theme
code --install-extension rust-lang.rust-analyzer
code --install-extension tamasfe.even-better-toml
