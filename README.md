# Overview

This is my new setup for nvim with pure Lua.

## Plugin Manager

To install on Linux/Mac
` git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

To install on Windows
`git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"`

## Install LSP tools via Mason

You can install other LSP servers from `:MasonInstall`.

* rust: `:MasonInstall rust-analyzer codelldb`

## Clang, gcc, zig needed for build
To install zig on windows if needed use `scoop install zig`

## Python 3 dependencies
`pip install --user --upgrade neovim`
`pip install --user --upgrade neovim-remote`

## Ripgrep for searches
`scoop install ripgrep`
