#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Rootdir
PRODUCT_PACKAGES += \
    pstore_annotate.sh \
    hardware_revisions.sh \
    init.mmi.usb.sh \
    init.mmi.backup.trustlet.sh \
    apanic_annotate.sh \
    init.oem.fingerprint.overlay.sh \
    init.mmi.block_perm.sh \
    init.oem.fingerprint2.overlay.sh \
    init.insmod.sh \
    apanic_copy.sh \
    apanic_save.sh \
    init.mmi.boot.sh \
    init.mmi.modules.sh \
    init.oem.hw.sh \
    apanic_mtk.sh \
    init.mmi.touch.sh \

PRODUCT_PACKAGES += \
    fstab.mt6785 \
    meta_init.connectivity.rc \
    init.project.rc \
    meta_init.rc \
    factory_init.rc \
    init.connectivity.common.rc \
    multi_init.rc \
    init.modem.rc \
    init.sensor_1_0.rc \
    init.mmi.chipset.rc \
    apanic.rc \
    init.mmi.rc \
    init.ago.rc \
    init.mt6785.rc \
    meta_init.project.rc \
    init.mmi.tcmd.rc \
    factory_init.connectivity.rc \
    init.mmi.overlay.rc \
    init.connectivity.rc \
    init_connectivity.rc \
    factory_init.connectivity.common.rc \
    meta_init.modem.rc \
    meta_init.connectivity.common.rc \
    init.mmi.backup.trustlet.rc \
    factory_init.project.rc \
    init.mt6785.usb.rc \
    init.aee.rc \
    init.recovery.mt6785.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6785:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6785


# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/motorola/lisbon/lisbon-vendor.mk)
