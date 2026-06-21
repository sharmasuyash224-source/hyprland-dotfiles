#!/bin/bash

STATUS=$(playerctl status 2>/dev/null)

if [ "$STATUS" != "Playing" ]; then
    echo '{"text":"","class":"hidden"}'
    exit 0
fi

frames=(
"▁▂▃▄"
"▂▄▆▃"
"▄▇▅▂"
"▇▅▂▃"
"▃▅▇▄"
)

FRAME=${frames[$(( $(date +%s) % ${#frames[@]} ))]}

echo "{\"text\":\"$FRAME\"}"