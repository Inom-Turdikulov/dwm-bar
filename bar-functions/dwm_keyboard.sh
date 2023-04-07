#!/bin/sh

# A dwm_bar function that displays the current keyboard layout
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: xorg-setxkbmap

dwm_keyboard () {
    COMMAND=$(xset -q | grep LED | awk '{ print $10 }')

    case "$COMMAND" in

    "00000000"|"00000001") LAYOUT="US" ;;

    "00001000"|"00001001") LAYOUT="🇷" ;;

    *) LAYOUT="??" ;;

    esac

    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf "%s" "$LAYOUT"
    else
        printf "KEY %s" "$LAYOUT"
    fi
    printf "%s\n" "$SEP2"
}

dwm_keyboard
