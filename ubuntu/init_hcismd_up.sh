#!/bin/sh

#Maximum number of attempts to enable hcismd to try to get
# hci0 to come online.  Writing to sysfs too early seems to
# not work, so we loop.
MAXTRIES=15

#fix wlan
j=1
while [ ! $j -gt $MAXTRIES ]  ; do
    insmod /system/lib/modules/wlan.ko
    if [ "$?" -ne "0" ]; then
      sleep 1
    fi
    
    j=$((j + 1))
done

#setprop bluetooth.hciattach true
setprop ro.qualcomm.bt.hci_transport smd
setprop qcom.bt.dev_power_class 2
setprop qcom.bt.le_dev_pwr_class 2

i=1
while [ ! $i -gt $MAXTRIES ]  ; do
    echo 1 > /sys/module/hci_smd/parameters/hcismd_set
    if [ -e /sys/class/bluetooth/hci0 ] ; then
        # found hci0, get/set BT MAC address
        echo 0 > /sys/module/hci_smd/parameters/hcismd_set
        bt_mac=$(/system/bin/hci_qcomm_init -e -p 2 -P 2 -d /dev/ttyHSL0 2>1 | grep -oE '([0-9a-f]{2}:){5}([0-9a-f]{2})')
        echo "BT MAC: $bt_mac"
        if [ ! -z "$bt_mac" ] ; then
            echo $bt_mac > /var/lib/bluetooth/board-address
            echo "BT MAC: $bt_mac"
        fi
        echo 1 > /sys/module/hci_smd/parameters/hcismd_set
        exit 0
    fi
    sleep 1
    i=$((i + 1))
    if [ $i == $MAXTRIES ] ; then
        # must have gotten through all our retries, fail
        exit 1
    fi

done
