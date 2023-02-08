#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================

# custom function to detect the system architecture (and discriminate armv6/7)
detect_arch(){
	local architecture
	if [ -n "$(uname -m | grep arm64)" ] || [ -n "$(uname -m | grep aarch64)" ]; then
		architecture="arm64"
	elif [ -n "$(uname -m | grep 64)" ]; then
		architecture="amd64"
	elif [ -n "$(uname -m | grep 86)" ]; then
		architecture="i586"
	elif [ -n "$(uname -m | grep armv7)" ]; then
		architecture="armv7"
	else
		architecture="unknown"
	fi
	echo $architecture
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
