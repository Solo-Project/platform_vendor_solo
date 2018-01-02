# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit common product files.
$(call inherit-product, vendor/solo/products/common_full.mk)

# Setup device specific product configuration.
PRODUCT_NAME := solo_angler
PRODUCT_BRAND := google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:8.1.0/OPM1.171019.011/4448085:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 8.1.0 OPM1.171019.011 4448085 release-keys"

