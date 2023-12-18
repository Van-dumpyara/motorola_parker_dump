#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from parker device
$(call inherit-product, device/motorola/parker/device.mk)

PRODUCT_DEVICE := parker
PRODUCT_NAME := lineage_parker
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola one zoom
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="parker_retail-user 10 QPH30.29-Q3-28-13-10-11 457f7 release-keys"

BUILD_FINGERPRINT := motorola/parker_retail/parker:10/QPH30.29-Q3-28-13-10-11/457f7:user/release-keys
