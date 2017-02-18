LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := rm-wrapper
LOCAL_SRC_FILES := rm-wrapper.c
LOCAL_CFLAGS := -fPIE
LOCAL_LDFLAGS := -fPIE -pie -ldl -llog
LOCAL_C_INCLUDES := $(ANDROID_BUILD_TOP)/bionic/libc/stdio
LOCAL_SHARED_LIBRARIES := libc libdl liblog libm libstdc++
include $(BUILD_EXECUTABLE)
