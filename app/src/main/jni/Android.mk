LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

#opencv library
OPENCVROOT:= C:\Users\colin\AndroidStudioProjects\saycheeze\sdk
#OPENCVROOT:= C:\Users\DEFAVORITE\Desktop\sayCheese_final\sdk
OPENCV_CAMERA_MODULES:=on
OPENCV_INSTALL_MODULES:=on
OPENCV_LIB_TYPE:=SHARED
include ${OPENCVROOT}\native\jni\OpenCV.mk


LOCAL_MODULE    := native-lib
LOCAL_SRC_FILES := main.cpp
LOCAL_LDLIBS += -llog -landroid

include $(BUILD_SHARED_LIBRARY)