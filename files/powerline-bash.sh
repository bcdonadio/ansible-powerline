#!/bin/bash
# This script will source powerline configurations for Bash

if [ -n "${BASH_VERSION-}" ] && [ -f `which powerline-daemon` ]; then
    powerline-daemon -q
    POWERLINE_PATH="$( pip show powerline-status 2>/dev/null |\
        grep -Po '^Location: \K(/.*)$' )"
    POWERLINE_BASH_SELECT=1
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_CONFIG_PATHS="$POWERLINE_PATH/powerline/config_files:/etc/powerline:$HOME/.config/powerline"
    source "$POWERLINE_PATH/powerline/bindings/bash/powerline.sh"
fi

