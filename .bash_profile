# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

TTY=$(tty)

[[ "$TTY" == "/dev/tty1" ]] && sudo systemctl stop getty@tty2.service && sleep 1 && Hyprland && sudo systemctl restart getty@tty2.service

[[ "$TTY" == "/dev/tty2" ]] && sudo systemctl stop getty@tty1.service && sleep 1 &&  gamescope -S stretch -f -W 1920 -H 1080 -r 99.99 --backend drm --mangoapp --immediate-flips --rt -- steam && sudo systemctl restart getty@tty1.service && chvt 1

