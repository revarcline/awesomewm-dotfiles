#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run "autorandr --change"
run	"picom -b --config ~/.config/awesome/picom.conf"
run "nm-applet"
run "blueman-applet"
run "pamac-tray"
run "pasystray"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
run "numlockx on"
run "vgrive"
run "setxkbmap -option caps:escape"
run "setxkbmap -option compose:menu"
