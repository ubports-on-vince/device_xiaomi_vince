sudo apt install anbox-ubuntu-touch
mkdir anbox-data
sudo wget -q --show-progress -O /home/phablet/anbox-data/android.img http://cdimage.ubports.com/anbox-images/android-armhf-64binder.img
touch /home/phablet/anbox-data/.enable
mkdir anbox-data/data
sudo chmod -R o+wrx /home/phablet/anbox-data/data
sudo start -q anbox-container
start -q anbox-session
echo please reboot device 2 times!
