## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := msm8625

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Haier-MAXX/msm8625/device_msm8625.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := msm8625
PRODUCT_NAME := cm_msm8625
PRODUCT_BRAND := qcom
PRODUCT_MODEL := msm8625
PRODUCT_MANUFACTURER := Haier_MAXX
PRODUCT_BOARD := 7x27
DEVICE_MODEL := msm8625
