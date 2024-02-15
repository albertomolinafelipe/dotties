xrdb -merge ~/.Xresources
setxkbmap es
exec slstatus &
feh --bg-fill ~/dotties/themes/wallpaper.jpg &
# dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY &
# exec battery_notification &
exec dwm
