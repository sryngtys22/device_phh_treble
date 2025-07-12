$(call inherit-product, vendor/infinity/config/common.mk)
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)
$(call inherit-product, vendor/infinity/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/infinity/config/BoardConfigInfinity.mk)
$(call inherit-product, device/lineage/sepolicy/common/sepolicy.mk)
-include vendor/infinity/build/core/config.mk

# Kernel
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
TARGET_NO_KERNEL_IMAGE := true
TARGET_NO_KERNEL_OVERRIDE := true

# SELinux
SELINUX_IGNORE_NEVERALLOWS := true
TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true

# Product
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
PRODUCT_CHARACTERISTICS := device
TARGET_PRODUCT_PROP += device/phh/treble/product.prop

# APN
PRODUCT_PACKAGES += apns-conf.xml

PRODUCT_EXTRA_VNDK_VERSIONS += 28 29
