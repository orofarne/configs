#!/bin/bash

# run once guard
guard_file="/tmp/$USERNAME""_awesome_autostart.guard"
[[ -f $guard_file ]] && exit 0 || touch $guard_file

# applications
kbdd
xscreensaver &
urxvtd -f

autocutsel &
autocutsel -s PRIMARY &
