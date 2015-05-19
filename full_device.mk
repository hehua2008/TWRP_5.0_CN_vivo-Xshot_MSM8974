$(call inherit-product, build/target/product/full.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

LOCAL_PATH := device/vivo/vivo_X710L

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/sbin/security_boot_check:root/sbin/security_boot_check \
    $(LOCAL_PATH)/charger:root/charger \
    $(LOCAL_PATH)/file_contexts:root/file_contexts \
    $(LOCAL_PATH)/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/property_contexts:root/property_contexts \
    $(LOCAL_PATH)/seapp_contexts:root/seapp_contexts \
    $(LOCAL_PATH)/sepolicy:root/sepolicy

PRODUCT_COPY_FILES += $(foreach n, $(shell ls $(LOCAL_PATH)/res/images/charger/), $(LOCAL_PATH)/res/images/charger/$(n):root/res/images/charger/$(n))

PRODUCT_COPY_FILES += $(foreach n, $(shell ls $(LOCAL_PATH)/sh/), $(LOCAL_PATH)/sh/$(n):root/$(n))

# Discard inherited values and use our own instead.
PRODUCT_NAME := vivo_X710L
PRODUCT_DEVICE := msm8974
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo X710L
PRODUCT_MANUFACTURER := BBK
