#
# Copyright (C) 2011 The CyanogenMod Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8660 configs
$(call inherit-product, device/htc/villec2/msm8660.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/villec2/overlay

# GPS and F2FS
PRODUCT_PACKAGES += \
    gps.villec2 \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs

# Wifi
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# Bluetooth/wifi Firmware
$(call inherit-product-if-exists, device/htc/villec2/bcm_hcd.mk)

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/villec2/ramdisk/fstab.villec2:root/fstab.villec2 \
    device/htc/villec2/ramdisk/init.villec2.rc:root/init.villec2.rc \
    device/htc/villec2/ramdisk/init.villec2.usb.rc:root/init.villec2.usb.rc \
    device/htc/villec2/ramdisk/ueventd.villec2.rc:root/ueventd.villec2.rc \
    device/htc/villec2/ramdisk/remount.villec2:root/remount.villec2

  

## recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/villec2/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/villec2/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/villec2/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/villec2/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/villec2/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt
    
      
      
# QC thermald config
PRODUCT_COPY_FILES += device/htc/villec2/configs/thermald.conf:system/etc/thermald.conf


# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
	device/htc/villec2/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
	device/htc/villec2/keylayout/cy8c-touchkey.kl:system/usr/keylayout/cy8c-touchkey.kl \
	device/htc/villec2/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	device/htc/villec2/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
	device/htc/villec2/keylayout/villec2-keypad.kl:system/usr/keylayout/villec2-keypad.kl

# Input device config
PRODUCT_COPY_FILES += \
	device/htc/villec2/idc/projector_input.idc:system/usr/idc/projector_input.idc \
	device/htc/villec2/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc

# HTC BT Audio tune
PRODUCT_COPY_FILES += device/htc/villec2/dsp/AudioBTID.csv:system/etc/AudioBTID.csv

# Sound configs
PRODUCT_COPY_FILES += \
	device/htc/villec2/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
	device/htc/villec2/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
	device/htc/villec2/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
	device/htc/villec2/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
	device/htc/villec2/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
	device/htc/villec2/dsp/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
	device/htc/villec2/dsp/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
	device/htc/villec2/dsp/soundimage/Sound_Original_MFG.txt:system/etc/soundimage/Sound_Original_MFG.txt \
	device/htc/villec2/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
	device/htc/villec2/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
	device/htc/villec2/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
	device/htc/villec2/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
	device/htc/villec2/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
	device/htc/villec2/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
	device/htc/villec2/dsp/soundimage/Sound_Phone_Original.txt:system/etc/soundimage/Sound_Phone_Original.txt \
	device/htc/villec2/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
	device/htc/villec2/dsp/soundimage/Sound_Rec_mono.txt:system/etc/soundimage/Sound_Rec_mono.txt \
	device/htc/villec2/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
	device/htc/villec2/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
	device/htc/villec2/dsp/soundimage/Sound_Rec_Voice_record.txt:system/etc/soundimage/Sound_Rec_Voice_record.txt \
	device/htc/villec2/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
	device/htc/villec2/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
	device/htc/villec2/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
	device/htc/villec2/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
	device/htc/villec2/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
	device/htc/villec2/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
	device/htc/villec2/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
	device/htc/villec2/dsp/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
	device/htc/villec2/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Adreno Drivers
PRODUCT_COPY_FILES += \
    device/htc/villec2/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/htc/villec2/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/htc/villec2/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/htc/villec2/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/villec2/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

## misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US hdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/villec2/villec2-vendor.mk)

$(call inherit-product-if-exists, vendor/htc-extra/villec2/villec2-vendor.mk)
# media profiles and capabilities spec
$(call inherit-product, device/htc/villec2/media_a1026.mk)

## htc audio settings
$(call inherit-product, device/htc/villec2/media_htcaudio.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := villec2
PRODUCT_NAME := villec2
PRODUCT_BRAND := htc
PRODUCT_MODEL := One S C2
PRODUCT_MANUFACTURER := HTC

include device/htc/villec2/twrp.mk
