ARCHS = arm64

export PREFIX = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/
export SDKVERSION = 14.4

INSTALL_TARGET_PROCESSES = YouTube

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = uYouCrashFix

uYouCrashFix_FILES = Tweak.xm
uYouCrashFix_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
