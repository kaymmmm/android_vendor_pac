# Check for target product
ifeq (pac_i9300,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# AOKP device overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/pac/overlay/aokp/device/i9300

# PAC boot logo
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/common/bootlogo/pac_logo_720x1280.rle:root/logo.rle

# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/720x1280/bootanimation.zip:system/media/bootanimation.zip

# include PAC common configuration
include vendor/pac/config/pac_common.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/i9300/cm.mk)

PRODUCT_NAME := pac_i9300

endif
