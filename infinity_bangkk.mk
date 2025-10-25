#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bangkk device
$(call inherit-product, device/motorola/bangkk/device.mk)

# Inherit some common Infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := "akarizao"
TARGET_SUPPORTS_BLUR := true
TARGET_SHIPS_FULL_GAPPS := true
TARGET_SHIPS_GOOGLE_DIALER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080
WITH_GAPPS := true

PRODUCT_NAME := infinity_bangkk
PRODUCT_DEVICE := bangkk
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g84 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bangkk_g-user 15 V1TC35H.88-16 c3b1cd-0e8d4 release-keys MV-301" \
    BuildFingerprint=motorola/bangkk_g/bangkk:15/V1TC35H.88-16/c3b1cd-0e8d4:user/release-keys \
    DeviceProduct=bangkk_g
