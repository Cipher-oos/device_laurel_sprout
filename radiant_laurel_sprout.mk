#
# Copyright (C) 2021 The radiant-X Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common radiant-X stuff
$(call inherit-product, vendor/radiant/config/common_full_phone.mk)

# Inherit from laurel_sprout device
$(call inherit-product, $(LOCAL_PATH)/laurel_sprout.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := laurel_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := radiant_laurel_sprout
PRODUCT_MODEL := Mi A3

PRODUCT_PRODUCT_PROPERTIES += \
  ro.nezuko.cpu=SD665

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# ABI Checks
SKIP_ABI_CHECKS := true

# FOD Animation
WITH_FOD_ANIMATIONS := true

# Props
RADIANT_MAINTAINER := Mahmoud_Suleiman
RADIANT_BUILD_TYPE := OFFICIAL
RADIANT_SUPPORT_URL := https://t.me/nezuko_A3
RADIANT_DONATE_URL := https://paypal.me/mmsuleiman
BUILD_USERNAME := Cipher
BUILD_HOSTNAME := radiant

#TARGET_INCLUDE_STOCK_ARCORE  := true
TARGET_BOOT_ANIMATION_RES := 720
#TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_GAPPS  := false


BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210605.005/7349499:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="laurel_sprout-user 10 QKQ1.190910.002 V11.0.15.0.QFQMIXM release-keys" \
    PRODUCT_NAME="laurel_sprout"
