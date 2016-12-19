#!/usr/bin/env bash

SESSION_NAME=$1

tmux source ~/.tmux.conf

tmux has-session -t ${SESSION_NAME}
if [ $? != 0 ]
then

	
# Create the session

tmux new-session -s ${SESSION_NAME} -n dev -d vim
tmux split-window -v -p 20 -t ${SESSION_NAME} # select the first (0) pane
tmux select-pane -t 1  
tmux split-window -h -p 50 -t ${SESSION_NAME}
tmux new-window -n shell
tmux select-window -t ${SESSION_NAME}:0
tmux select-pane -t 0


fi
tmux attach -t ${SESSION_NAME}
