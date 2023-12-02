#!/bin/env bash

# check for user creation parameters
if [ "$1" == "" ] || [ "$3" == "" ] || [ "$3" == "" ]; then
	echo "usage: $0 username 'password' /path/to/ssh/public/key"
else
	useradd -mr -d /home/"$1" -G wheel "$1"
	echo "$2" | passwd "$1" --stdin
	mkdir /home/"$1"/.ssh
	chmod 700 /home/"$1"/.ssh
	touch /home/"$1"/.ssh/authorized_keys
	chmod 600 /home/"$1"/.ssh/authorized_keys
	cat "$3" > /home/"$1"/.ssh/authorized_keys
	chown -Rv "$1": /home/"$1"/.ssh
fi
