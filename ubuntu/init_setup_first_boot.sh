#!/bin/sh

if [ -f /home/phablet/.first-setup-done ]; then
    exit
fi


#fix egl permission for unity8:
chmod 666 /dev/kgsl-3d0

#fix hang on lightdm
mkdir -p /run/user/32011
chown phablet /run/user/32011
chmod 0700 /run/user/32011

#fix dbus errors:
chmod 4777 /usr/lib/dbus-1.0/dbus-daemon-launch-helper
chown root:messagebus /usr/lib/dbus-1.0/dbus-daemon-launch-helper
chmod u+s /usr/lib/dbus-1.0/dbus-daemon-launch-helper


#add _apt user for apt:
adduser --force-badname --system --home /nonexistent --no-create-home --quiet _apt


#fix incorrect name 
mkdir -p /etc/system-image/config.d

#fix Cgroup namespace: required
mkdir /dev/cpuset
mount -t cpuset cpuset /dev/cpuset

touch /home/phablet/.first-setup-done
exit
