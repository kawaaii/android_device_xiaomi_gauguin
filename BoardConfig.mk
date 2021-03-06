#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/gauguin

BUILD_BROKEN_DUP_RULES := true

TARGET_IS_LAGOON := true

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_gauguin
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_gauguin

# Kernel
TARGET_KERNEL_CONFIG := vendor/gauguin_user_defconfig

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/gauguin/BoardConfigVendor.mk
