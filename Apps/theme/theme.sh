#!/bin/bash
source env/bin/activate
colorz "${@}" --minv 170 --maxv 200 --no-preview | python colorz2termite.py > /tmp/termite_colors
deactivate
sed -e '/background/r /tmp/termite_colors' ~/.config/termite/config_template > ~/.config/termite/config # Modify termite colors
sed -i -e "s!exec_always.*feh .*!exec_always --no-startup-id feh --bg-fill \"${@}\"!" ~/.config/i3/config
killall -USR1 termite # Restart termite
i3-msg restart # Restart i3
