#!/bin/bash
cp ${@} ~/.config/termite/config
killall -USR1 termite # Restart termite
