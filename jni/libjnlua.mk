
LOCAL_MODULE := libjnlua
LOCAL_C_INCLUDES += $(NDK_APP_PROJECT_PATH)/jni/lua
LOCAL_C_INCLUDES += $(NDK_APP_PROJECT_PATH)/jni/sproto
LOCAL_C_INCLUDES += $(NDK_APP_PROJECT_PATH)/jni/lpeg
LOCAL_C_INCLUDES += $(NDK_APP_PROJECT_PATH)/jni/luasocket
LOCAL_C_INCLUDES += $(NDK_APP_PROJECT_PATH)/jni/crypt
LOCAL_STATIC_LIBRARIES :=  liblua libsocket liblpeg libsproto libcrypt
LOCAL_SRC_FILES := jnlua/src/jnlua.c 
LOCAL_LDLIBS := -ldl -lm -llog

# POSIX as we're on linux, and compatibility mode in case you'll be running scripts written for LUA <5.2
LOCAL_CFLAGS += -DLUA_USE_POSIX -DLUA_USE_DLOPEN

include $(BUILD_SHARED_LIBRARY)

 