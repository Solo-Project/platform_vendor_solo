ifneq ($(filter solo_hammerhead solo_shamu,$(TARGET_PRODUCT)),)
# Camera Effects
PRODUCT_COPY_FILES +=  \
    vendor/solo/proprietary/common/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/solo/proprietary/common/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
endif

ifneq ($(filter solo_hammerhead solo_shamu,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    libdrmclearkeyplugin 
endif

# Proprietary latinime libs needed for Keyboard swyping
ifneq ($(filter solo_hammerhead solo_shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/solo/proprietary/common/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so
else
PRODUCT_COPY_FILES += \
    vendor/solo/proprietary/common/system/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so
endif
