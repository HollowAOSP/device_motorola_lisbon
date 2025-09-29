#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lisbon device
$(call inherit-product, device/motorola/lisbon/device.mk)

PRODUCT_DEVICE := lisbon
PRODUCT_NAME := lineage_lisbon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(60)s
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lisbon_retail-user 12 S3RLS32.114-25-7 4a7b6 release-keys"

BUILD_FINGERPRINT := motorola/lisbon_retail/lisbon:12/S3RLS32.114-25-7/4a7b6:user/release-keys
