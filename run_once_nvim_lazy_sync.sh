#!/bin/bash
set -e

echo "Running Neovim LazyVim bootstrap..."
~/.local/bin/nvim --headless "+Lazy! sync" +qa
