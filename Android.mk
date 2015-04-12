LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), vivo_X710L)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
