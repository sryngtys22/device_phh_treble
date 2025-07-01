include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)
# include vendor/gapps/arm64/arm64-vendor.mk


$(call inherit-product, device/phh/treble/aosp.mk)
#include vendor/pixel-framework/config.mk
#include vendor/google/pixel/config.mk

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit pixel-priv keys
$(call inherit-product, vendor/pixel-priv/keys/keys.mk)

# Inherit some common PixelOS stuff
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_NO_CAMERA := true

PRODUCT_NAME := aosp_gsi
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := AOSP Treble

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

PRODUCT_PACKAGES +=

WITH_ADB_INSECURE := true

PRODUCT_EXTRA_VNDK_VERSIONS += 28 29



#remove makupgoogle