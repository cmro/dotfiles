#!/bin/bash
set -e

echo "Running Neovim LazyVim bootstrap..."
nvim --headless "+Lazy! sync" +qa
