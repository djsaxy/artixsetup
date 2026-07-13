#!/bin/sh

echo -e '#!/bin/sh\n\nxinput set-prop "Atmel maXTouch Touchpad" "libinput Tapping Enabled" 1\n\nexec bspwm' >> ~/.xinitrc
