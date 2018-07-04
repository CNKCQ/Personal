#!/bin/bash

ARIA2DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if test ! $(which aria2c); then
	echo "aria2 installing"
	brew install aria2
fi

echo "aria2 configuring"

mkdir $HOME/.aria2

ln -i "$ARIA2DIR/aria2.conf" $HOME/.aria2/aria2.conf
aria2c --conf-path="$HOME/.aria2/aria2.conf" -D

