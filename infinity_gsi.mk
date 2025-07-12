TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

$(call inherit-product, device/phh/treble/infinity.mk)

PRODUCT_NAME := infinity_gsi
PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

PRODUCT_MODEL := Infinity X Treble



TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_WIDTH := 720
TARGET_SUPPORTS_BLUR := true
USE_MOTO_CALCULATOR := true

INFINITY_MAINTAINER := Doze-off
INFINITY_BUILD_TYPE := OFFICIAL
WITH_GAPPS := false