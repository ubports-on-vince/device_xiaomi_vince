PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.qti_bsp.abi=1

#This keeps time correct across reboots
PRODUCT_PACKAGES += timekeep

# Ubuntu Overlay Files
#
PRODUCT_COPY_FILES += \
    device/xiaomi/vince/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
    device/xiaomi/vince/ubuntu/mixer_paths_vince.xml:system/halium/etc/mixer_paths_vince.xml \
    device/xiaomi/vince/ubuntu/vince.conf:system/halium/etc/ubuntu-touch-session.d/vince.conf \
    device/xiaomi/vince/ubuntu/vince.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    device/xiaomi/vince/ubuntu/ofono.override:system/halium/etc/init/ofono.override \
    device/xiaomi/vince/ubuntu/libs/libdataitems.so:system/lib/libdataitems.so \
    device/xiaomi/vince/ubuntu/libs/libdrplugin_client.so:system/lib/libdrplugin_client.so \
    device/xiaomi/vince/ubuntu/libs/libDRPlugin.so:system/lib/libDRPlugin.so \
    device/xiaomi/vince/ubuntu/libs/libevent_observer.so:system/lib/libevent_observer.so \
    device/xiaomi/vince/ubuntu/libs/libI420colorconvert.so:system/lib/libI420colorconvert.so \
    device/xiaomi/vince/ubuntu/libs/libizat_core.so:system/lib/libizat_core.so \
    device/xiaomi/vince/ubuntu/libs/liblbs_core.so:system/lib/liblbs_core.so \
    device/xiaomi/vince/ubuntu/libs/libloc_adapter.so:system/lib/libloc_adapter.so \
    device/xiaomi/vince/ubuntu/libs/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so \
    device/xiaomi/vince/ubuntu/libs/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    device/xiaomi/vince/ubuntu/libs/liblocationservice_glue.so:system/lib/liblocationservice_glue.so \
    device/xiaomi/vince/ubuntu/libs/liblocationservice.so:system/lib/liblocationservice.so \
    device/xiaomi/vince/ubuntu/libs/libloc_ds_api.so:system/lib/libloc_ds_api.so \
    device/xiaomi/vince/ubuntu/libs/liblowi_client.so:system/lib/liblowi_client.so \
    device/xiaomi/vince/ubuntu/libs/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    device/xiaomi/vince/ubuntu/libs/libulp2.so:system/lib/libulp2.so \
    device/xiaomi/vince/ubuntu/init_setup_first_boot.sh:system/etc/init_setup_first_boot.sh \
    device/xiaomi/vince/ubuntu/init_hcismd_up.sh:system/etc/init_hcismd_up.sh \
    device/xiaomi/vince/ubuntu/init_setup_first_boot.sh:system/halium/var/lib/lxc/android/pre-start.d/init_setup_first_boot.sh \
    device/xiaomi/vince/ubuntu/init_hcismd_up.sh:system/halium/var/lib/lxc/android/pre-start.d/init_hcismd_up.sh \
    device/xiaomi/vince/ubuntu/servicemanager.rc:system/etc/init/servicemanager.rc \
    device/xiaomi/vince/ubuntu/config.xml:system/halium/usr/share/powerd/device_configs/config-default.xml \
    device/xiaomi/vince/ubuntu/config.xml:system/halium/usr/share/powerd/device_configs/config-vince.xml
