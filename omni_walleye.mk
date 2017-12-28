# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080p

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit base AOSP device configuration
$(call inherit-product, device/google/muskie/aosp_walleye.mk)

# Discard inherited values and use our own instead.
PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := Android
PRODUCT_NAME := omni_walleye
PRODUCT_DEVICE := walleye
PRODUCT_MODEL := Omni on walleye
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    BUILD_FINGERPRINT=google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.011 4448085 release-keys"

$(call inherit-product-if-exists, vendor/google/walleye/walleye-vendor.mk)
