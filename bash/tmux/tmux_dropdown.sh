#!/bin/env bash

tmux_binary="$(which tmux)"

if [ -f "$tmux_binary" ]; then
	$($tmux_binary attach -t '^') || $($tmux_binary new-session -s '^')
else
	echo "tmux binary not found"
	$(which bash)
fi
