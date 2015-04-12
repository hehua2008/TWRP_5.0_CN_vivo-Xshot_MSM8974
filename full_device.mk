$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# vendor file
$(call inherit-product-if-exists, vendor/vivo/vivo_X710L/device-vendor.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, build/target/product/full.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

TARGET_BOOTANIMATION_NAME := 1080

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

LOCAL_PATH := device/vivo/vivo_X710L

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/init.rc:root/init.rc \
    $(LOCAL_PATH)/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/init.qcom.ril.sh:root/init.qcom.ril.sh \
    $(LOCAL_PATH)/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    $(LOCAL_PATH)/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/init.vivo.usb.sh:root/init.vivo.usb.sh \
    $(LOCAL_PATH)/init.qcom.sensor.sh:root/init.qcom.sensor.sh \
    $(LOCAL_PATH)/init.qcom.factory.sh:root/init.qcom.factory.sh \
    $(LOCAL_PATH)/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/sbin/security_boot_check:root/sbin/security_boot_check \
    $(LOCAL_PATH)/sbin/ntfs-3g:root/sbin/ntfs-3g \
    $(LOCAL_PATH)/charger:root/charger \
    $(LOCAL_PATH)/file_contexts:root/file_contexts \
    $(LOCAL_PATH)/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/property_contexts:root/property_contexts \
    $(LOCAL_PATH)/seapp_contexts:root/seapp_contexts \
    $(LOCAL_PATH)/sepolicy:root/sepolicy
#    $(LOCAL_PATH)/res/images/charger/battery_0.png:recovery/root/res/images/charger/battery_0.png \
#    $(LOCAL_PATH)/res/images/charger/battery_1.png:recovery/root/res/images/charger/battery_1.png \
#    $(LOCAL_PATH)/res/images/charger/battery_2.png:recovery/root/res/images/charger/battery_2.png \
#    $(LOCAL_PATH)/res/images/charger/battery_3.png:recovery/root/res/images/charger/battery_3.png \
#    $(LOCAL_PATH)/res/images/charger/battery_4.png:recovery/root/res/images/charger/battery_4.png \
#    $(LOCAL_PATH)/res/images/charger/battery_5.png:recovery/root/res/images/charger/battery_5.png \
#    $(LOCAL_PATH)/res/images/charger/battery_6.png:recovery/root/res/images/charger/battery_6.png \
#    $(LOCAL_PATH)/res/images/charger/battery_7.png:recovery/root/res/images/charger/battery_7.png \
#    $(LOCAL_PATH)/res/images/charger/battery_8.png:recovery/root/res/images/charger/battery_8.png \
#    $(LOCAL_PATH)/res/images/charger/battery_9.png:recovery/root/res/images/charger/battery_9.png \
#    $(LOCAL_PATH)/res/images/charger/battery_10.png:recovery/root/res/images/charger/battery_10.png \
#    $(LOCAL_PATH)/res/images/charger/battery_BadContect.png:recovery/root/res/images/charger/battery_BadContect.png \
#    $(LOCAL_PATH)/res/images/charger/battery_charge.png:recovery/root/res/images/charger/battery_charge.png \
#    $(LOCAL_PATH)/res/images/charger/battery_ChargeDone.png:recovery/root/res/images/charger/battery_ChargeDone.png \
#    $(LOCAL_PATH)/res/images/charger/battery_ChargingAbnormal.png:recovery/root/res/images/charger/battery_ChargingAbnormal.png \
#    $(LOCAL_PATH)/res/images/charger/battery_ChgTimeOut.png:recovery/root/res/images/charger/battery_ChgTimeOut.png \
#    $(LOCAL_PATH)/res/images/charger/battery_fail.png:recovery/root/res/images/charger/battery_fail.png \
#    $(LOCAL_PATH)/res/images/charger/battery_LowBattery.png:recovery/root/res/images/charger/battery_LowBattery.png \
#    $(LOCAL_PATH)/res/images/charger/battery_NotOriginalBat.png:recovery/root/res/images/charger/battery_NotOriginalBat.png \
#    $(LOCAL_PATH)/res/images/charger/battery_TempHight.png:recovery/root/res/images/charger/battery_TempHight.png \
#    $(LOCAL_PATH)/res/images/charger/battery_TempLow.png:recovery/root/res/images/charger/battery_TempLow.png \
#    $(LOCAL_PATH)/res/images/charger/battery_VbatHight.png:recovery/root/res/images/charger/battery_VbatHight.png \
#    $(LOCAL_PATH)/res/images/charger/battery_VchgHight.png:recovery/root/res/images/charger/battery_VchgHight.png \
#    $(LOCAL_PATH)/res/images/charger/battery_voltageLow.png:recovery/root/res/images/charger/battery_voltageLow.png \
#    $(LOCAL_PATH)/res/images/charger/battery_WeakCharger.png:recovery/root/res/images/charger/battery_WeakCharger.png \

# Discard inherited values and use our own instead.
PRODUCT_NAME := vivo_X710L
PRODUCT_DEVICE := msm8974
PRODUCT_BRAND := vivo
PRODUCT_MANUFACTURER := BBK
PRODUCT_MODEL := vivo X710L
