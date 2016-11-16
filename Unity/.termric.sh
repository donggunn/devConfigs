#!/bin/sh
tmux new-session -s Dev -d -n Servers
tmux split-window -t Dev
tmux split-window -t Dev
tmux new-window -n Local
tmux select-window -t Servers
tmux a -t Dev
tmux kill-session -t Dev
