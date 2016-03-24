ifneq ($(filter tuesday_hammerhead tuesday_shamu,$(TARGET_PRODUCT)),)
# Camera Effects
PRODUCT_COPY_FILES +=  \
    vendor/tuesday/proprietary/common/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/tuesday/proprietary/common/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
endif

ifneq ($(filter tuesday_hammerhead tuesday_shamu,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    libdrmclearkeyplugin 
endif

# Proprietary latinime libs needed for Keyboard swyping
ifneq ($(filter tuesday_hammerhead tuesday_shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/tuesday/proprietary/common/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so
else
PRODUCT_COPY_FILES += \
    vendor/tuesday/proprietary/common/system/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so
endif

# Backup Tool
ifneq ($(WITH_GMS),true)
PRODUCT_COPY_FILES += \
    vendor/tuesday/prebuilt/common/bin/50-tuesday.sh:system/addon.d/50-tuesday.sh \
    vendor/tuesday/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/tuesday/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions
endif
