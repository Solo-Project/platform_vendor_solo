# build prop
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.adb.secure=1 \
    persist.service.adb.enable=1 \
    persist.sys.usb.config=mtp,adb


# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Build SimToolKit
PRODUCT_PACKAGES += \
    Stk \
    CellBroadcastReceiver

#Root by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dun.override=0

# Disable Rescue Party
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/solo/prebuilt/bin/sysinit:system/bin/sysinit

# init file
PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/etc/init.d/init.solo.rc:root/init.solo.rc

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/solo/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/solo/prebuilt/bin/50-base.sh:system/addon.d/50-base.sh \

PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/common/bootanimations/BOOTANIMATION.zip:system/media/bootanimation.zip

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

#Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/solo/overlay/common

# Inherit common product build prop overrides
-include vendor/solo/products/common_versions.mk
# Inherit common product build prop overrides
-include vendor/solo/products/filtered.mk
