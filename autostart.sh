#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
run "nm-applet"
run "volumeicon"
run "pamac-tray"
run "blueberry-tray"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
run "numlockx on"
run "vgrive"
run "xfce4-power-manager"
