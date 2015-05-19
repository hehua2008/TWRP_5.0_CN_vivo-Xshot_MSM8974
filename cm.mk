# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/vivo/vivo_X710L/full_device.mk)

# Release name
PRODUCT_RELEASE_NAME := vivo_X710L
 
# Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_vivo_X710L
PRODUCT_DEVICE := vivo_X710L
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo X710L
PRODUCT_MANUFACTURER := BBK

PRODUCT_BUILD_PROP_OVERRIDES += \
    PLATFORM_VERSION=4.4.2 \
    PRODUCT_MODEL="vivo X710L" \
    PRODUCT_NAME=msm8974 \
    TARGET_DEVICE=msm8974 \
    BUILD_FINGERPRINT=4.4.2/KVT49L/eng.compiler.20150101:user/release-keys \
    PRIVATE_BUILD_DESC="msm8974-user 4.4.2 KVT49L eng.compiler.20150101 release-keys"
