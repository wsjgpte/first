LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := mx8_v4l2_cap_drm.c
LOCAL_C_INCLUDES += $(LOCAL_PATH) $(LIBDRM_IMX)/libdrm-imx/ $(LIBDRM_IMX)/libdrm-imx/include/drm/
LOCAL_MULTILIB := both
LOCAL_CFLAGS += -DBUILD_FOR_ANDROID
LOCAL_SHARED_LIBRARIES := libutils libc
LOCAL_STATIC_LIBRARIES := libdrm
LOCAL_MODULE := mx8_v4l2_cap_drm
LOCAL_MODULE_STEM_32:= mx8_v4l2_cap_drm_32
LOCAL_MODULE_STEM_64 := mx8_v4l2_cap_drm_64
LOCAL_MODULE_TAGS := tests
LOCAL_VENDOR_MODULE := true
include $(BUILD_EXECUTABLE)
