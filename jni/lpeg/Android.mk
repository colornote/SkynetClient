LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE     := lpeg
LOCAL_C_INCLUDES += $(NDK_APP_PROJECT_PATH)/jni/lua

LOCAL_SRC_FILES  := lpcap.c lpcode.c lpprint.c lptree.c lpvm.c

include $(BUILD_STATIC_LIBRARY)







