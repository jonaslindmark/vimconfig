xrdb -merge ~/.xresources
xset r rate 200 50
setxkbmap -layout us -varialt altrg-intl
xkbset accessx sticky -twokey -latchlock
xkbset exp 1 =accessx =sticky =twokey =latchlock

exec i3
