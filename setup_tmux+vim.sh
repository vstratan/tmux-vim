
#!/bin/bash

# Figure out directory this script resides in
exedir=$(readlink -f $(dirname $0))

vimInstalled=$(which vim)
if [ "$vimInstalled" == "/usr/bin/vim" ]; then
    echo "Vim is already installed."
else
set -e
sudo apt-get -y install vim
set +e
fi
tmuxInstalled=$(which tmux)
if [ "$vimInstalled" == "/usr/bin/tmux" ]; then
    echo "Vim is already installed."
else
set -e
sudo apt-get -y install tmux
set +e
fi

cp -r {.vim,.vimrc,.tmux.conf} ~/
mkdir ~/local/tmux
cp tmux.sh ~/local/tmux/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
vim +PluginInstall
