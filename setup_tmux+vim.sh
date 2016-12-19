
#!/bin/bash

# Figure out directory this script resides in
exedir=$(readlink -f $(dirname $0))

cp {.vim,.vimrc,.tmux.conf} ~/
cp tmux.sh /opt/tmux
