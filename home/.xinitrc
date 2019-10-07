#!/usr/bin/sh

# Mandatorily source xinitrc-common, which is common code shared between the
# Xsession and xinitrc scripts which has been factored out to avoid duplication
. /etc/X11/xinit/xinitrc-common

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

export TERMINAL=sakura
export QT_STYLE_OVERRIDE=gtk2

[ -x /usr/bin/i3 ] && /usr/bin/i3
