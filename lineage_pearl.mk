#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from pearl device
$(call inherit-product, device/xiaomi/pearl/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := pearl
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 23054RA19C
PRODUCT_NAME := lineage_pearl

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pearl-user 14 UP1A.231005.007 V816.0.11.0.ULHCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/pearl/pearl:14/UP1A.231005.007/V816.0.11.0.ULHCNXM:user/release-keys
