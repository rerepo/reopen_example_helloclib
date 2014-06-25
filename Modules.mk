LOCAL_PATH := $(call my-dir)

###################### hlclib ######################
include $(CLEAR_VARS)

LOCAL_MODULE := hlclib

LOCAL_SRC_FILES :=
LOCAL_SRC_FILES += libso/libso.c

LOCAL_C_INCLUDES :=
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libso

include $(BUILD_HOST_SHARED_LIBRARY)

###################### helloclib ######################
include $(CLEAR_VARS)

LOCAL_MODULE := helloclib

LOCAL_SRC_FILES :=
LOCAL_SRC_FILES += main.c
LOCAL_SRC_FILES += func.c
LOCAL_SRC_FILES += lib/lib.c

LOCAL_C_INCLUDES :=
LOCAL_C_INCLUDES += $(LOCAL_PATH)/lib

#include $(BUILD_HOST_EXECUTABLE)
