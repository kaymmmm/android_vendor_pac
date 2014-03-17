# Check for target product
ifeq (pac_nicki,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# PAC device overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pac/overlay/pac/hdpi_480x854

# PAC boot logo
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/common/bootlogo/pac_logo_480x854.rle:root/logo.rle

# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/480x854/bootanimation.zip:system/media/bootanimation.zip

# include PAC common configuration
include vendor/pac/config/pac_common.mk

# Inherit CM device configuration
$(call inherit-product, device/sony/nicki/cm.mk)

PRODUCT_NAME := pac_nicki

endif
