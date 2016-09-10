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

#extras
PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/solo/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \

#extras
PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/common/app/GoogleMessenger/com.google.android.apps.messaging.apk:system/app/GoogleMessenger/com.google.android.apps.messaging.apk \
    vendor/solo/prebuilt/common/app/GoogleDeskClock/com.google.android.deskclock.apk:system/app/GoogleDeskClock/com.google.android.deskclock.apk \
    vendor/solo/prebuilt/common/app/GoogleCallendar/com.google.android.calendar.apk:system/app/GoogleCallendar/com.google.android.calendar.apk \
    vendor/solo/prebuilt/common/app/NexusLauncherPrebuilt/NexusLauncherPrebuilt.apk:system/priv-app/NexusLauncherPrebuilt/NexusLauncherPrebuilt.apk \
    vendor/solo/prebuilt/common/app/GoogleCamera/com.google.android.GoogleCamera.apk:system/priv-app/GoogleCamera/com.google.android.GoogleCamera.apk \
    vendor/solo/prebuilt/common/app/WallpaperPickerGooglePrebuilt/WallpaperPickerGooglePrebuilt.apk:system/app/WallpaperPickerGooglePrebuilt/WallpaperPickerGooglePrebuilt.apk \

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/common/bin/sysinit:system/bin/sysinit

# init file
PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/common/etc/init.d/init.solo.rc:root/init.solo.rc

PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/common/bootanimations/BOOTANIMATION.zip:system/media/bootanimation.zip

#Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/solo/overlay/common

# Inherit common product build prop overrides
-include vendor/solo/products/common_versions.mk
# Inherit common product build prop overrides
-include vendor/solo/products/filtered.mk
