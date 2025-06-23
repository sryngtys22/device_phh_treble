$(call inherit-product, vendor/droidx/config/common.mk)
$(call inherit-product, vendor/droidx/config/common_full_phone.mk)
$(call inherit-product, vendor/droidx/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/droidx/config/BoardConfigDroidX.mk)
$(call inherit-product, device/droidx/sepolicy/common/sepolicy.mk)
-include vendor/droidx/build/core/config.mk

TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true

PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
LOCAL_UNINSTALLABLE_MODULE := true

SELINUX_IGNORE_NEVERALLOWS := true

override BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

TARGET_BOOT_ANIMATION_RES := 720

DROIDX_GAPPS := false
