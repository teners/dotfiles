# Set keyboard layout toggle
setxkbmap -layout us,ru -option grp:alt_shift_toggle -option ctrl:nocaps

# Load ~/.Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Start i3
exec i3
