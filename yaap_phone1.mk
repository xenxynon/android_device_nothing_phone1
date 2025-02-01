#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from phone1 device
$(call inherit-product, device/nothing/phone1/device.mk)

# Inherit vendor configaration
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := yaap_phone1
PRODUCT_DEVICE := phone1
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A063
PRODUCT_MANUFACTURER := Nothing

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

TARGET_BUILD_GAPPS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=Spacewar \
    BuildDesc="Spacewar-user 12 SKQ1.211230.001 1666412462 release-keys" \
    BuildFingerprint="Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1666412462:user/release-keys"
