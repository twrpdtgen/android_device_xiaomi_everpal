#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from everpal device
$(call inherit-product, device/xiaomi/everpal/device.mk)

PRODUCT_DEVICE := everpal
PRODUCT_NAME := omni_everpal
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := everpal
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lineage_everpal-userdebug 13 TQ3A.230805.001 eng.admin.20230918.235618 test-keys"

BUILD_FINGERPRINT := Redmi/lineage_everpal/everpal:13/TQ3A.230805.001/admin09182354:userdebug/test-keys
