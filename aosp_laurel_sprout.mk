#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from laurel_sprout device
$(call inherit-product, device/xiaomi/laurel_sprout/device.mk)

# Inherit some common aosp  stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Props
NEZUKO_MAINTAINER := MahmoudSuleiman
NEZUKO_BUILD_TYPE := UNOFFICIAL
NEZUKO_SUPPORT_URL := https://t.me/nezuko_A3
PRODUCT_PRODUCT_PROPERTIES += \ro.nezuko.cpu=SD665

# Inherit from custom vendor
#$(call inherit-product, vendor/MiuiCamera/config.mk)


TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 720
TARGET_INCLUDE_WIFI_EXT := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_laurel_sprout
PRODUCT_DEVICE := laurel_sprout
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A3
PRODUCT_MANUFACTURER := Xiaomi

# ABI Checks
SKIP_ABI_CHECKS := true

# FOD Animation
EXTRA_FOD_ANIMATIONS := true

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210305.006/7119741:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="laurel_sprout-user 10 QKQ1.190910.002 V11.0.15.0.QFQMIXM release-keys" \
    PRODUCT_NAME="laurel_sprout"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
