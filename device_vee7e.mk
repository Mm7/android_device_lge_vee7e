$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/vee7e/vee7e-vendor.mk)

# Ramdisk files
PRODUCT_PACKAGES += \
	fstab.msm7627a \
	init.target.rc \
	init.qcom.ril.path.sh \
	init.qcom.composition_type.sh \
	init.target.8x25.sh \
	init.qcom.thermald_conf.sh \
	init.vee7.rc

# Recovery files
PRODUCT_PACKAGES += \
	init.recovery.vee7.rc 

DEVICE_PACKAGE_OVERLAYS += device/lge/vee7e/overlay

LOCAL_PATH := device/lge/vee7e
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_vee7e
PRODUCT_DEVICE := vee7e
