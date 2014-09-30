LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include jni/libjnlua.mk
include jni/luasocket/Android.mk 
include jni/lpeg/Android.mk
include jni/sproto/Android.mk
include jni/crypt/Android.mk
$(call import-module,lua)
