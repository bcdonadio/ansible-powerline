#!/bin/bash
# This script will source powerline configurations for Bash

if [ -n "${BASH_VERSION-}" ]; then
    systemctl status powerline.service &>/dev/null
    if [ $? -eq 0 ]; then
        POWERLINE_PATH="$( pip show powerline-status | grep -Po '^Location: \K(/.*)$' )"
        POWERLINE_BASH_SELECT=1
        POWERLINE_BASH_CONTINUATION=1
        POWERLINE_CONFIG_PATHS="/etc/powerline,$HOME/.config/powerline"
        source "$POWERLINE_PATH/powerline/bindings/bash/powerline.sh"
    fi
fi

