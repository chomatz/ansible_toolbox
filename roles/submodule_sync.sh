#!/bin/env bash

for submodule in *; do
	if [ -d "$submodule" ]; then
		cd "$submodule"
		echo
		echo "checking submodule - $submodule"
		git checkout main
		git pull
		cd ..
	fi
done
