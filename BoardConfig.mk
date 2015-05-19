# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330 

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Architecture
TARGET_KERNEL_ARCH := arm
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := vivo_X710L

BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 maxcpus=2 msm_rtb.filter=0x7F ehci-hcd.park=3 vmalloc=360M product.version=PD1302_A_1.16.2 androidboot.selinux=permissive
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_MKBOOTIMG_ARGS := --dt device/vivo/vivo_X710L/dt.img --ramdisk_offset 0x02000000 --tags_offset 0x01e00000

BOARD_BOOTIMAGE_PARTITION_SIZE := 15728640
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
# BOARD_SYSTEMIMAGE_PARTITION_SIZE := 
# BOARD_USERDATAIMAGE_PARTITION_SIZE := 
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# Custom recovery
TARGET_PREBUILT_KERNEL := device/vivo/vivo_X710L/kernel
#TARGET_RECOVERY_INITRC := device/vivo/vivo_X710L/twrp_init.rc
TARGET_RECOVERY_FSTAB := device/vivo/vivo_X710L/twrp.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

DEVICE_RESOLUTION := 1080x1920

BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_TOUCH_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_REAL_SDCARD := true
#RECOVERY_SDCARD_ON_DATA := true

BOARD_INCLUDE_FB2PNG := true

RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# TWRP
TW_CUSTOM_THEME := device/vivo/vivo_X710L/twres
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_NO_REBOOT_BOOTLOADER := true
#TW_NO_USB_STORAGE := true
#TW_ALWAYS_RMRF := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 120
#TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_L_CRYPTO := true
TW_INCLUDE_FB2PNG := true
#TW_USE_TOOLBOX := true
#TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
#TARGET_RECOVERY_QCOM_RTC_FIX := true    #ifeq ($(TARGET_CPU_VARIANT),krait)

#BOARD_CUSTOM_BOOTIMG_MK := device/vivo/vivo_X710L/custombootimg.mk
