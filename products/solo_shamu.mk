# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit common product files.
$(call inherit-product, vendor/solo/products/common_full.mk)

# Setup device specific product configuration.
PRODUCT_NAME := solo_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.0/NRD90M/3085278:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.0 NRD90M 3085278 release-keys"

