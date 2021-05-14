#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/xiaomi/vince/vince-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_PACKAGES += \
    libcurl

# ANT
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Audio
PRODUCT_PACKAGES += \
    audiod \
#    audio.a2dp.default \
    audio.primary.msm8953 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcompostprocbundle \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
	$(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	$(LOCAL_PATH)/audio/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
	$(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
	$(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
	$(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
	$(LOCAL_PATH)/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt

# XML Audio configuration files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml

# Camera
PRODUCT_PACKAGES += \
    camera.msm8953_32 \
    libmm-qcamera_32
#    Snap

# Consumerir
PRODUCT_PACKAGES += \
    consumerir.msm8953

# Display
PRODUCT_PACKAGES += \
    copybit.msm8953 \
    gralloc.msm8953 \
    hwcomposer.msm8953 \
    memtrack.msm8953 \
    libtinyxml
#    liboverlay \
#    libjni_livedisplay \

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Fs_config
PRODUCT_PACKAGES += \
    fs_config_files

# GPS
PRODUCT_PACKAGES += \
    gps.msm8953 \
    libcurl \
    libgnsspps

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/etc/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/etc/xtwifi.conf:system/etc/xtwifi.conf \

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx_v21.kl:system/usr/keylayout/synaptics_dsx_v21.kl \
    $(LOCAL_PATH)/keylayout/uinput-goodix.kl:system/usr/keylayout/uinput-goodix.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# IPA Manager
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Lights
PRODUCT_PACKAGES += \
    lights.msm8953

# Media 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxSwVencHevc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8953

# QMI
PRODUCT_PACKAGES += \
    libjson

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.sh \
    init.target.rc \
    ueventd.qcom.rc

PRODUCT_PACKAGES += \
    init.qcom.bt.sh \
    init.qcom.post_boot.sh

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libcnefeatureconfig \
    libxml2

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

PRODUCT_PACKAGES += \
    sensors.msm8953

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf

# Wifi
PRODUCT_PACKAGES += \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    wcnss_service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/fstman.ini:system/etc/wifi/fstman.ini \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini

PRODUCT_DEFAULT_PROPERTY_OVERRIDES  += \
     persist.camera.shutter.disable=1 \
     camera.disable_zsl_mode=1 \
     persist.camera.HAL3.enabled=0 \
     ro.lirc.dev=/dev/peel_ir

# Ubuntu Overlay Files
#
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/mixer_paths_vince.xml:system/etc/mixer_paths_vince.xml \
    $(LOCAL_PATH)/ubuntu/vince.conf:system/halium/etc/ubuntu-touch-session.d/vince.conf \
    $(LOCAL_PATH)/ubuntu/vince.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    $(LOCAL_PATH)/ubuntu/ofono.override:system/halium/etc/init/ofono.override \
    $(LOCAL_PATH)/ubuntu/libs/libdataitems.so:system/lib/libdataitems.so \
    $(LOCAL_PATH)/ubuntu/libs/libdrplugin_client.so:system/lib/libdrplugin_client.so \
    $(LOCAL_PATH)/ubuntu/libs/libDRPlugin.so:system/lib/libDRPlugin.so \
    $(LOCAL_PATH)/ubuntu/libs/libevent_observer.so:system/lib/libevent_observer.so \
    $(LOCAL_PATH)/ubuntu/libs/libI420colorconvert.so:system/lib/libI420colorconvert.so \
    $(LOCAL_PATH)/ubuntu/libs/libizat_core.so:system/lib/libizat_core.so \
    $(LOCAL_PATH)/ubuntu/libs/liblbs_core.so:system/lib/liblbs_core.so \
    $(LOCAL_PATH)/ubuntu/libs/libloc_adapter.so:system/lib/libloc_adapter.so \
    $(LOCAL_PATH)/ubuntu/libs/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so \
    $(LOCAL_PATH)/ubuntu/libs/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    $(LOCAL_PATH)/ubuntu/libs/liblocationservice_glue.so:system/lib/liblocationservice_glue.so \
    $(LOCAL_PATH)/ubuntu/libs/liblocationservice.so:system/lib/liblocationservice.so \
    $(LOCAL_PATH)/ubuntu/libs/libloc_ds_api.so:system/lib/libloc_ds_api.so \
    $(LOCAL_PATH)/ubuntu/libs/liblowi_client.so:system/lib/liblowi_client.so \
    $(LOCAL_PATH)/ubuntu/libs/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    $(LOCAL_PATH)/ubuntu/libs/libulp2.so:system/lib/libulp2.so \
    $(LOCAL_PATH)/ubuntu/init_setup_first_boot.sh:system/etc/init_setup_first_boot.sh \
    $(LOCAL_PATH)/ubuntu/init_hcismd_up.sh:system/halium/usr/share/bluetooth-touch/vince \
    $(LOCAL_PATH)/ubuntu/timekeeper.conf:system/halium/etc/init/timekeeper.conf \
    $(LOCAL_PATH)/ubuntu/touch.pa:system/halium/etc/pulse/touch.pa \
    $(LOCAL_PATH)/ubuntu/apparmor.d/local/usr.bin.media-hub-server:system/halium/etc/apparmor.d/local/usr.bin.media-hub-server \
    $(LOCAL_PATH)/ubuntu/apparmor.d/abstractions/base:system/halium/etc/apparmor.d/abstractions/base \
    $(LOCAL_PATH)/ubuntu/unblock_wakelock.sh:system/etc/unblock_wakelock.sh \
    $(LOCAL_PATH)/ubuntu/environment:system/halium/etc/environment \
    $(LOCAL_PATH)/ubuntu/config.xml:system/halium/usr/share/powerd/device_configs/config-default.xml \
    $(LOCAL_PATH)/ubuntu/bluetooth-touch-vince.conf:system/halium/etc/init/bluetooth-touch-android.conf \
    $(LOCAL_PATH)/ubuntu/device-hacks.conf:system/halium/etc/init/device-hacks.conf \
    $(LOCAL_PATH)/ubuntu/mediaserver.rc:system/halium/etc/mediaserver.rc \
    $(LOCAL_PATH)/ubuntu/apparmor.d/hardware/graphics.d/apparmor-easyprof-ubuntu_android:system/halium/usr/share/apparmor/hardware/graphics.d/apparmor-easyprof-ubuntu_android \
    $(LOCAL_PATH)/ubuntu/apparmor.d/hardware/video.d/apparmor-easyprof-ubuntu_android:system/halium/usr/share/apparmor/hardware/video.d/apparmor-easyprof-ubuntu_android


    

# Ubuntu Touch common USB initialization
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/usr/share/usbinit/setupusb:system/halium/usr/share/usbinit/setupusb \
    $(LOCAL_PATH)/ubuntu/etc/init/mtp-state.conf:system/halium/etc/init/mtp-state.conf \
    $(LOCAL_PATH)/ubuntu/usr/share/upstart/sessions/mtp-server.conf:system/halium/usr/share/upstart/sessions/mtp-server.conf


PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.qti_bsp.abi=1

# Ubuntu Touch Mir/hybris integration
PRODUCT_PACKAGES += \
    libubuntu_application_api \
    libcameraservice \
    libdroidmedia \
    libcamera_compat_layer \
    libmedia_compat_layer \
    libui_compat_layer \
    libsf_compat_layer \
    minisfservice \
    libminisf \
    libaudioflingerglue \
    miniafservice \
    minimediaservice \
    libminikin \
    libgui

#droidmedia
MINIMEDIA_SENSORSERVER_DISABLE := 1
MINIMEDIA_AUDIOPOLICYSERVICE_ENABLE := 1

# telepathy-ofono quirks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.t-o.quirk.forcesink=sink.primary_output \
    ro.t-o.quirk.forcesource=source.record_24_primary_input \
    ro.qc.sensors.wl_dis=true \
    ubuntu.widi.supported=true
	
# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

# droidmedia doesn't support HAL3 yet
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.camera.HAL3.enabled=0
