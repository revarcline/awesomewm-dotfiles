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
run "xset -b"
run "blueman-applet"
run "gnome-screenaver"
run "pamac-tray"
run "flameshot"
run "birdtray"
run "pasystray"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
run "numlockx on"
run "vgrive"
run "caffeine"
run "greenclip daemon"
run "keybase-gui"
