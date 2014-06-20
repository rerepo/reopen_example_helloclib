LOCAL_PATH := $(call my-dir)

###################### helloclib ######################
include $(CLEAR_VARS)

LOCAL_MODULE := helloclib

LOCAL_SRC_FILES :=
LOCAL_SRC_FILES += main.c
LOCAL_SRC_FILES += func.c
LOCAL_SRC_FILES += lib/lib.c
LOCAL_SRC_FILES += libso/libso.c

LOCAL_C_INCLUDES :=
LOCAL_C_INCLUDES += $(LOCAL_PATH)/lib
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libso

include $(BUILD_EXECUTABLE)

