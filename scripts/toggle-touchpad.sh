
#!/usr/bin/env bash

PAD_NAME="ascp1a00:00-093a:3013-touchpad"
STATEFILE="$HOME/.cache/hypr-touchpad-enabled"

mkdir -p "$HOME/.cache"

# Read last known state (default: true = enabled)
if [ -f "$STATEFILE" ]; then
    STATE=$(cat "$STATEFILE")
else
    STATE="true"
fi

echo "Last known state: $STATE" 1>&2

if [ "$STATE" = "true" ]; then
    echo "Disabling touchpad..." 1>&2
    hyprctl keyword "device[$PAD_NAME]:enabled" false
    echo "false" > "$STATEFILE"
else
    echo "Enabling touchpad..." 1>&2
    hyprctl keyword "device[$PAD_NAME]:enabled" true
    echo "true" > "$STATEFILE"
fi
