# lots of "Warning: watch ENOSPC"
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# .desktop
Exec=export LC_MESSAGES=en_US.UTF && /usr/bin/code %f
