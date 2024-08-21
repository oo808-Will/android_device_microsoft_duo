#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from duo device
$(call inherit-product, device/microsoft/duo/device.mk)

PRODUCT_DEVICE := duo
PRODUCT_NAME := omni_duo
PRODUCT_BRAND := surface
PRODUCT_MODEL := Surface Duo
PRODUCT_MANUFACTURER := microsoft

PRODUCT_GMS_CLIENTID_BASE := android-microsoft

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="duo-att-user duo 2021.721.42 202107210042 release-keys"

BUILD_FINGERPRINT := surface/duo-att/duo:10/2021.721.42/202107210042:user/release-keys
