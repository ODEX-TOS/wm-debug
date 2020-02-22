#!/bin/bash

# This script is used to easily debug awesomewm changes.
# It is very simular to the awtt script. but it also works for other init levels apart from init 7

LOG_ERROR="[ERROR] "
LOG_WARN="[WARN] "
LOG_DEBUG="[DEBUG] "

AWESOME_DISPLAY=":1"
RESOLUTION="800x600"

function log {
    echo "$@"
}

function is-installed {
if [[ ! "$(command -v awesome)" ]]; then
            log "$LOG_ERROR" "Awesome is not installed. Aborting..."
            exit 1
    fi
    if [[ ! "$(command -v Xephyr)" ]]; then
            log "$LOG_ERROR" "Xephyr is not installed. Aborting..."
            exit 1
    fi
}

function help {
    name="launch"
    echo -e "$name resolution | display"
    echo -e "POSITIONAL ARGUMENTS:\n"
    echo -e "$name -h | --help\t\t\t\tPrint this help message."
    echo -e "$name -r | --resolution <pixelsXpixels>\tSet the resolution of the awesome window in XaxisxYaxis eg 1920x1080 (default 800x600"
    echo -e "$name -d | --display <number>\t\t\tSet the display on witch to show the window (by default :1)"
    echo -e "$name -s | --stop \t\t\t\tStop all instances"
}

function abort {
        killall Xephyr
}

function set-variables {
    while [ "$1" != "" ]; do
        if [[ "$1" == "-r" || "$1" == "--resolution" ]]; then
            RESOLUTION="$2"
            shift
        fi
        if [[ "$1" == "-d" || "$1" == "--display" ]]; then
            AWESOME_DISPLAY="$2"
            shift
        fi
        if [[ "$1" == "-s" || "$1" == "--stop" ]]; then
            abort
            exit 0
        fi
        if [[ "$1" == "-h" || "$1" == "--help" ]]; then
                help
                exit 0
        fi
        shift
    done
}

function launch {
    Xephyr -br -ac -noreset -screen "$RESOLUTION" "$AWESOME_DISPLAY"  &
    sleep 1
    DISPLAY="$AWESOME_DISPLAY" awesome

}

is-installed

set-variables $@
launch
