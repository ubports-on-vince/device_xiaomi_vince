#!/bin/sh

wget https://ci.ubports.com/job/pulseaudio-modules-droid/job/PR-1/8/artifact/pulseaudio-modules-droid-24_11.1.76+0%7E20190225000127.8%7E1.gbp826b96_armhf.deb
sudo dpkg --install pulseaudio-modules-droid-24_11.1.76+0%7E20190225000127.8%7E1.gbp826b96_armhf.deb
sudo sed -i -e "s/load-module module-droid-discover voice_virtual_stream=true/load-module module-droid-card-24/" /etc/pulse/touch.pa
reboot

