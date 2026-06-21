#!/bin/bash

STATUS=$(playerctl status 2>/dev/null)

if [ "$STATUS" != "Playing" ] && [ "$STATUS" != "Paused" ]; then
    echo '{"text":"","class":"hidden"}'
    exit 0
fi

PLAYER=$(playerctl metadata --format '{{playerName}}' 2>/dev/null)
ARTIST=$(playerctl metadata artist 2>/dev/null)
TITLE=$(playerctl metadata title 2>/dev/null)

case "$PLAYER" in
    spotify)
        ICON=""
        ;;
    firefox)
        ICON="󰈹"
        ;;
    chromium)
        ICON=""
        ;;
    vlc)
        ICON="󰕼"
        ;;
    *)
        ICON="󰎆"
        ;;
esac

TEXT="$ICON $ARTIST - $TITLE"

MAXLEN=50

if [ ${#TEXT} -gt $MAXLEN ]; then
    OFFSET=$(( $(date +%s) % (${#TEXT} - MAXLEN + 1) ))
    TEXT="${TEXT:$OFFSET:$MAXLEN}"
fi

echo "{\"text\":\"$TEXT\"}"