#!/bin/env bash

tmux_binary="$(which tmux)"

if [ -f "$tmux_binary" ]; then
	$($tmux_binary new-session)
else
	echo "tmux binary not found"
	$(which bash)
fi
