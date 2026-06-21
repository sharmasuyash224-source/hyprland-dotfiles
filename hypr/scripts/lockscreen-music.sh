#!/bin/bash

STATUS=$(playerctl status 2>/dev/null)

if [ "$STATUS" != "Playing" ] && [ "$STATUS" != "Paused" ]; then
    exit 0
fi

PLAYER=$(playerctl metadata --format '{{playerName}}' 2>/dev/null)
ARTIST=$(playerctl metadata artist 2>/dev/null)
TITLE=$(playerctl metadata title 2>/dev/null)

case "$PLAYER" in
    spotify)  ICON="" ;;
    firefox)  ICON="󰈹" ;;
    chromium) ICON="" ;;#!/bin/bash

STATUS=$(playerctl status 2>/dev/null)

if [ "$STATUS" != "Playing" ] && [ "$STATUS" != "Paused" ]; then
    exit 0
fi

PLAYER=$(playerctl metadata --format '{{playerName}}' 2>/dev/null)
ARTIST=$(playerctl metadata artist 2>/dev/null)
TITLE=$(playerctl metadata title 2>/dev/null)

case "$PLAYER" in
    spotify)  ICON="" ;;
    firefox)  ICON="󰈹" ;;
    chromium) ICON="" ;;
    vlc)      ICON="󰕼" ;;
    *)        ICON="󰎆" ;;
esac

TEXT="$ICON $ARTIST - $TITLE"

MAX=45

if [ ${#TEXT} -gt $MAX ]; then
    TEXT="${TEXT:0:$MAX}..."
fi

echo "$TEXT"
    vlc)      ICON="󰕼" ;;
    *)        ICON="󰎆" ;;
esac

TEXT="$ICON $ARTIST - $TITLE"

MAX=45

if [ ${#TEXT} -gt $MAX ]; then
    TEXT="${TEXT:0:$MAX}..."
fi

echo "$TEXT"