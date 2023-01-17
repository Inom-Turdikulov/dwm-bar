#!/bin/sh

# A dwm_status function that displays dunst notification daemon status
# Inom Turdikulov <i@inomoz.ru>
# GNU GPLv3

dwm_dunst() {
    FILE=/tmp/dnd.lock
    if test -f "$FILE"; then
		icon="⛔"
    else
		icon=""
    fi

	printf "%s" "$icon"
}

dwm_dunst

