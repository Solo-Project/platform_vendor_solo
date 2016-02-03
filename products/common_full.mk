# build prop
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
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

#extras
PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/solo/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \

PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/common/bootanimations/BOOTANIMATION.zip:system/media/bootanimation.zip

#Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/solo/overlay/common

# Inherit common product build prop overrides
-include vendor/solo/products/common_versions.mk
# Inherit common product build prop overrides
-include vendor/solo/products/filtered.mk
