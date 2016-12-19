
#!/bin/bash

# Figure out directory this script resides in
exedir=$(readlink -f $(dirname $0))

vimInstalled=$(which vim)
if [ "$dockerInstalled" == "/usr/bin/vim" ]; then
    echo "Vim is already installed."
else
set -e
sudo apt-get -y install vim
set +e
fi
tmuxInstalled=$(which tmux)
if [ "$dockerInstalled" == "/usr/bin/tmux" ]; then
    echo "Vim is already installed."
else
set -e
sudo apt-get -y install tmux
set +e
fi

cp {.vim,.vimrc,.tmux.conf} ~/
mkdir ~/local
cp tmux.sh ~/local/tmux/

vim +PluginInstall
