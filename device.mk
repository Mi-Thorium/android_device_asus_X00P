#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Audio
TARGET_DISABLE_AUDIO := true

# ConsumerIR
TARGET_HAS_NO_CONSUMERIR := true

# Display
TARGET_USES_Q_DISPLAY_STACK := true

# Gatekeeper
TARGET_USES_DEVICE_SPECIFIC_GATEKEEPER := true

# Keymaster
TARGET_USES_DEVICE_SPECIFIC_KEYMASTER := true

# Inherit from mithorium-common
$(call inherit-product, device/xiaomi/mithorium-common/msm8937.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_PACKAGES += \
    HapticOverlay

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/msm8952-snd-card-mtp_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/msm8952-snd-card-mtp_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/qcom-tpd.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/qcom-tpd.kl

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.X00P

# Rootdir
PRODUCT_PACKAGES += \
    init.fingerprint.rc \
    init.xiaomi.device.rc

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/asus/X00P/X00P-vendor.mk)
