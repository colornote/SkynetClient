LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE     := crypt
LOCAL_C_INCLUDES += $(NDK_APP_PROJECT_PATH)/jni/lua

LOCAL_SRC_FILES  := lua-crypt.c lsha1.c

include $(BUILD_STATIC_LIBRARY)




