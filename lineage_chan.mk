#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chan device
$(call inherit-product, device/realme/chan/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_chan
PRODUCT_DEVICE := chan
PRODUCT_MANUFACTURER := realme
PRODUCT_MODEL := RMX2086
PRODUCT_BRAND := realme

PRODUCT_SYSTEM_NAME := realme X3 SuperZoom
PRODUCT_SYSTEM_DEVICE := realme X3 SuperZoom

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX2086-user 12 SKQ1.210216.001 Q.202210132041 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX2086/RMX2086L1:12/SKQ1.210216.001/Q.202210132041:user/release-keys
