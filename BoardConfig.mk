#
# Copyright (C) 2017 The LineageOS Project
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
#export USE_NINJA=false
FORCE_32_BIT := true

include device/cyanogen/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/wingtech/wt88047
include $(DEVICE_PATH)/board/*.mk

# inherit from the proprietary version
-include vendor/wingtech/wt88047/BoardConfigVendor.mk

DEVICE_PATH := device/wingtech/wt88047


# Architecture
TARGET_BOARD_SUFFIX := _32
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

TARGET_BOARD_PLATFORM := msm8916

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME :=

# Kernel
#BOARD_KERNEL_BASE := 0x80000000
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 #androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_SEPARATED_DT := true
#BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
#BOARD_RAMDISK_OFFSET     := 0x02000000
#TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel

#BOARD_KERNEL_CMDLINE += \
#    sched_enable_hmp=1 \
#   phy-msm-usb.floated_charger_enable=1

# Timeservice
BOARD_USES_QC_TIME_SERVICES := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
#TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := true
TW_CRYPTO_SYSTEM_VOLD_DEBUG := true

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 335544320
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5939100672
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TW_INCLUDE_NTFS_3G := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
BOARD_SUPPRESS_SECURE_ERASE := true

#SuperSu
TW_EXCLUDE_SUPERSU := true

# Debug flags
TWRP_INCLUDE_LOGCAT := true
TW_CRYPTO_SYSTEM_VOLD_DEBUG := true


# TWRP specific build flags
TW_THEME := portrait_hdpi
TW_TARGET_USES_QCOM_BSP := true
TW_NEW_ION_HEAP := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_DEFAULT_LANGUAGE := ru

# Asian region languages
TW_EXTRA_LANGUAGES := true
