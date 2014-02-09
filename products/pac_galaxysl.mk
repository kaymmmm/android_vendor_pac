# Check for target product
ifeq (pac_galaxysl,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_galaxysl

# AOKP device overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pac/overlay/aokp/device/galaxysl

# PAC device overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pac/overlay/pac/hdpi_480x800

# PAC boot logo
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/common/bootlogo/pac_logo_480x800.rle:root/logo.rle

# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# include PAC common configuration
include vendor/pac/config/pac_common.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/galaxysl/cm.mk)

PRODUCT_NAME := pac_galaxysl

endif
