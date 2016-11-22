#!/bin/sh

SESSIONNAME="Dev"

HASSES=$(tmux has-session -t $SESSIONNAME)
if [ $? -ne 0 ] && [ -n $HASSES ] 
then
	tmux new-session -s $SESSIONNAME -d -n Servers
	tmux split-window -t $SESSIONNAME
	tmux split-window -t $SESSIONNAME
	tmux select-layout main-vertical
	tmux new-window -n Local
	tmux split-window -t $SESSIONNAME
	tmux select-window -t Servers
fi
tmux a -t $SESSIONNAME
tmux kill-session -t $SESSIONNAME
