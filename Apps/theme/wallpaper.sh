#!/bin/bash
sed -i -e "s!exec_always.*feh .*!exec_always --no-startup-id feh --bg-fill \"${@}\"!" ~/.config/i3/config
i3-msg restart # Restart i3
