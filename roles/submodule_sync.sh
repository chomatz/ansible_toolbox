#!/bin/env bash

for submodule in *; do
	cd "$submodule"
	echo
	echo "checking submodule - $submodule"
	git checkout main
	git pull
	cd ..
done
