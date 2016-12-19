
#!/bin/bash

# Figure out directory this script resides in
exedir=$(readlink -f $(dirname $0))

cp {.vim,.vimrc,.tmux.conf} ~/
mkdir ~/local
cp tmux.sh ~/local/tmux
vim +PluginInstall
