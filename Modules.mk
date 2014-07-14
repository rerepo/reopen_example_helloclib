LOCAL_PATH := $(call my-dir)

###################### libhlcapi ######################
include $(CLEAR_VARS)

LOCAL_MODULE := libhlcapi

LOCAL_SRC_FILES += libsapi/libsapi.c

#include $(BUILD_HOST_SHARED_LIBRARY)

###################### libhlc ######################
include $(CLEAR_VARS)

LOCAL_MODULE := libhlc

LOCAL_SRC_FILES += libso/libso.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/libsapi
LOCAL_SHARED_LIBRARIES += libhlcapi

#include $(BUILD_HOST_SHARED_LIBRARY)

###################### libhlaapi ######################
include $(CLEAR_VARS)

LOCAL_MODULE := libhlaapi

LOCAL_SRC_FILES += libaapi/libaapi.c

include $(BUILD_STATIC_LIBRARY)

###################### libhla ######################
include $(CLEAR_VARS)

LOCAL_MODULE := libhla

LOCAL_SRC_FILES += libao/libao.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/libaapi
LOCAL_STATIC_LIBRARIES += libhlaapi

include $(BUILD_STATIC_LIBRARY)

###################### helloclib ######################
include $(CLEAR_VARS)

LOCAL_MODULE := helloclib

LOCAL_SRC_FILES += main.c
LOCAL_SRC_FILES += func.c
LOCAL_SRC_FILES += lib/lib.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/lib

LOCAL_C_INCLUDES += $(LOCAL_PATH)/libso
LOCAL_SHARED_LIBRARIES += libhlc

LOCAL_C_INCLUDES += $(LOCAL_PATH)/libao
LOCAL_STATIC_LIBRARIES += libhla

# TODO: libhla dep on libhlaapi, so ld libhla before libhlaapi
LOCAL_STATIC_LIBRARIES += libhlaapi

#LOCAL_CFLAGS := -mstackrealign

#LOCAL_LDFLAGS += -lpthread
LOCAL_LDLIBS += -lpthread

#include $(BUILD_HOST_EXECUTABLE)
