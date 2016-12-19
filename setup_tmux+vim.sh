
#!/bin/bash

# Figure out directory this script resides in
exedir=$(readlink -f $(dirname $0))

if [[ $(which vim) ]]; then
    echo "Vim is already installed."
else
set -e
sudo apt-get -y install vim
set +e
fi
if [[ $(which tmux) ]]; then
    echo "Tmux is already installed."
else
set -e
sudo apt-get -y install tmux
set +e
fi

cp -r {.vim,.vimrc,.tmux.conf} ~/
mkdir -p ~/local/tmux
cp tmux.sh ~/local/tmux/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle

sed -i -e "1s|^|alias tmx='cd ~/local/tmux/ \&\& ./tmux.sh' \nalias tma='tmux a -t' \n | " ~/.bashrc

vim +PluginInstall
