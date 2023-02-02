#!/bin/bash

echo 'sleep 15s; qdbus org.kde.kglobalaccel /component/org_kde_powerdevil invokeShortcut "Turn Off Screen"' >/tmp/turn-off-display.sh
chmod 700 /tmp/turn-off-display.sh

echo 'sleep 10m; SSH_AUTH_SOCK=/run/user/1000/openssh_agent ssh-add -D' >/tmp/ssh-rm-keys.sh
chmod 700 /tmp/ssh-rm-keys.sh

nohup /tmp/turn-off-display.sh >/dev/null 2>&1 &
echo $! >/tmp/turn-off-display.pid

nohup /tmp/ssh-rm-keys.sh >/dev/null 2>&1 &
echo $! >/tmp/ssh-rm-keys.pid
