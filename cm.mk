## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := vee7e

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vee7e/device_vee7e.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vee7e
PRODUCT_NAME := cm_vee7e
PRODUCT_BRAND := lge
PRODUCT_MODEL := vee7e
PRODUCT_MANUFACTURER := lge
