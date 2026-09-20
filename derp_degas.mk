#
# Copyright (C) 2023 The DerpFest Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/degas/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

PRODUCT_NAME := derp_degas
PRODUCT_DEVICE := degas
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2406APNFAG
PRODUCT_SYSTEM_NAME := degas_ru

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Xiaomi/degas_ru/degas:16/BP2A.250605.031.A3/OS3.0.303.0.WNERUXM:user/release-keys" \
    BuildFingerprint=Xiaomi/degas_ru/degas:16/BP2A.250605.031.A3/OS3.0.303.0.WNERUXM:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

# Misc
AXION_CAMERA_REAR_INFO := 64,8,2
AXION_CAMERA_FRONT_INFO := 16
AXION_PROCESSOR := Dimensity_8300_Ultra_(4nm)
AXION_MAINTAINER := zenin1504
