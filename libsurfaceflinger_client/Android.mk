ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),villec2)
ifeq ($(BOARD_VENDOR),htc)
ifeq ($(TARGET_BOARD_PLATFORM),msm8660)


LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES :=

LOCAL_SHARED_LIBRARIES :=

LOCAL_MODULE := libsurfaceflinger_client

include $(BUILD_SHARED_LIBRARY)

endif # TARGET_BOARD_PLATFORM
endif # BOARD_VENDOR
endif # BOARD is villec2
