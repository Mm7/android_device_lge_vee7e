LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

#include $(LOCAL_PATH)/root/Android.mk

# include the non-open-source counterpart to this file
-include vendor/lge/vee7e/AndroidBoardVendor.mk
