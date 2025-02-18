#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from waffle device
$(call inherit-product, device/oneplus/waffle/device.mk)

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Addons
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true
TARGET_GMS_EXTRAS := true
WITH_PIXEL_OVERLAYS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
PRODUCT_NO_CAMERA := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_INCLUDE_GOOGLE_DIALER := true

# extra add-ons for core GMS builds
# List of add-ons
PRODUCT_PACKAGES += \
    Photos \
    MarkupGoogle \
    LatinIMEGooglePrebuilt \
    PrebuiltDeskClockGoogle \
    CalculatorGooglePrebuilt \
    CalendarGooglePrebuilt \
    Velvet

PRODUCT_NAME := lineage_waffle
PRODUCT_DEVICE := waffle
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2581

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
scr_resolution := 1440
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=OP595DL1 \
    DeviceProduct=CPH2581 \
    SystemDevice=OP595DL1 \
    SystemName=CPH2581

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Lunch banner maintainer variable
RISING_MAINTAINER= Bidyadhar
RISING_PACKAGE_TYPE := WITH_GMS

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Qualcomm Snapdragon 8 Gen 3" \
    RisingMaintainer="unofficial-Bidyahar"
