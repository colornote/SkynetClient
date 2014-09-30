LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE     := sproto
LOCAL_C_INCLUDES += $(NDK_APP_PROJECT_PATH)/jni/lua

LOCAL_SRC_FILES  := lsproto.c sproto.c 

include $(BUILD_STATIC_LIBRARY)




