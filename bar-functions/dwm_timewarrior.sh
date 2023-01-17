#!/bin/sh

# A dwm_status function that displays timewarrior status
# Prints whether or not there is current timetracking with timewarrior.
# Inom Turdikulov <i@inomoz.ru>
# GNU GPLv3

dwm_timewarrior() {
	current_tracking="$(timew)"

	if [ "$current_tracking" = "There is no active time tracking." ]; then
		icon=""
	else
		icon="⏳"
	fi

	printf "%s" "$icon"

}

dwm_timewarrior

