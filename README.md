# Vim Configuration

## Overview
To edit text at the speed of your thought!

This is a thorough solution for editting lauganges like C++ and Python

## Requirements

### VIM
Run `vim --version` and check if

Minimum Support:
```
version >= 8.0
+conceal
```

### Softwares

Nearly all if not all of them can be found in `brew`, `apt-get`, etc.

- node(recommend nvm)  
- ccls  
- black  
- clang-format  
- tmux  
- gflags  
- ripgrep(request rust)  

### Python packages

Use `pip install`

- jedi(if use jedi for auto-complete)
- instant-markdown-d(if not installed with npm, not recommended)

### JS packages

Use `npm install`

- instant-markdown-d(if not installed with python, recommended)
- npm install -g bash-language-server

### COC packages

Use vim command `:CocInstall <package>`

- coc-pyright
- coc-json
- coc-word
- coc-emoji
- coc-tsserver

## Installation Step
1. Check if your VIM version>=8.0, if not, you need to install VIM8 and you may have to uninstall the older version of VIM  
2. Install [vim-plug](https://github.com/junegunn/vim-plug) to manage packages  
3. Run vim command `:PlugInstall`  
4. Install the requested software listed above.  
