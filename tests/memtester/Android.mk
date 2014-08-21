LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	memtester.c \
	tests.c

LOCAL_SHARED_LIBRARIES := libc libstlport

LOCAL_MODULE := memtester

LOCAL_MODULE_TAGS := optional

## LOCAL_CFLAGS += -fstack-protector-all
LOCAL_CFLAGS += -fomit-frame-pointer -fno-strict-aliasing
LOCAL_C_INCLUDES += bionic external/stlport/stlport

include $(BUILD_EXECUTABLE)
