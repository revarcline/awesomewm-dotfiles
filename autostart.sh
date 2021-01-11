#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run "~/.screenlayout/dualies.sh"
run	"picom -b --config ~/.config/awesome/picom.conf"
run "nm-applet"
run "volumeicon"
run "pamac-tray"
run "blueberry-tray"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
run "numlockx on"
run "vgrive"
