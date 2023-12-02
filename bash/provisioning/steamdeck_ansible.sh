#!/bin/env bash
sudo steamos-readonly disable
sudo pacman -Syu fuse-overlayfs podman python-pip
sudo steamos-readonly enable
python3 -m pip install ansible-navigator --user
