# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n 2> /dev/null || true
exit() {
        if pgrep -f tiger >/dev/null;then
                unset -f exit
                exit
        else
                pkill dbus
                pkill ssh-agent
                pkill gpg-agent
                pkill pulseaudio
                unset -f exit
                exit
        fi
}
