#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_MINI_GAPPS    := true
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

include device/google/coral/coral/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_NAME := derp_coral

# Boot animation
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="coral-user 13 TP1A.221005.002.B2 9382335 release-keys" \
    BuildFingerprint=google/coral/coral:13/TP1A.221005.002.B2/9382335:user/release-keys \
    DeviceProduct=coral

$(call inherit-product, vendor/google/coral/coral-vendor.mk)
