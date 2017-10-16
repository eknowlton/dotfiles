# start xmonad session
exec xmonad

# set background image
exec feh --scale-bg ~/mystique.png &

# Start a window compositor. This ensures Google Chrome paints correctly.
exec compton --config ~/.xmonad/compton.conf &
