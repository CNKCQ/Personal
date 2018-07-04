#!/bin/bash

MPVDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if test ! $(which proxychains4); then
	brew install proxychains-ng
fi

ln -i  proxychains.conf  /usr/local/etc/proxychains.conf

# test 
 proxychains4 curl ip.cn
