#!/bin/sh -e

# Lock screen displaying this image.
i3lock -i ~/.config/i3/locked.png -u

# Turn the screen off after a delay.
sleep 10; pgrep i3lock && xset dpms force off

