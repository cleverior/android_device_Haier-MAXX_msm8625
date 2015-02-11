LOCAL_PATH := device/Haier-MAXX/msm8625

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/Haier-MAXX/msm8625/msm8625-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/Haier-MAXX/msm8625/overlay

LOCAL_PATH := device/Haier-MAXX/msm8625
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

# Additional default prop
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=1 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	persist.sys.usb.config=mtp,mass_storage,adb \
	ro.goso.default.usb.config=mtp,mass_storage

# Additional mmc fstab
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/etc/recovery_mmc.fstab:recovery/root/etc/recovery_mmc.fstab 

# Charging images
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/res/images/charger/battery_0.png:recovery/root/res/images/charger/battery_0.png \
	$(LOCAL_PATH)/res/images/charger/battery_1.png:recovery/root/res/images/charger/battery_1.png \
	$(LOCAL_PATH)/res/images/charger/battery_2.png:recovery/root/res/images/charger/battery_2.png \
	$(LOCAL_PATH)/res/images/charger/battery_3.png:recovery/root/res/images/charger/battery_3.png \
	$(LOCAL_PATH)/res/images/charger/battery_4.png:recovery/root/res/images/charger/battery_4.png \
	$(LOCAL_PATH)/res/images/charger/battery_5.png:recovery/root/res/images/charger/battery_5.png \
	$(LOCAL_PATH)/res/images/charger/battery_charge.png:recovery/root/res/images/charger/battery_charge.png \
	$(LOCAL_PATH)/res/images/charger/battery_fail.png:recovery/root/res/images/charger/battery_fail.png \
	$(LOCAL_PATH)/res/images/charger/num0.png:recovery/root/res/images/charger/num0.png \
	$(LOCAL_PATH)/res/images/charger/num1.png:recovery/root/res/images/charger/num1.png \
	$(LOCAL_PATH)/res/images/charger/num2.png:recovery/root/res/images/charger/num2.png \
	$(LOCAL_PATH)/res/images/charger/num3.png:recovery/root/res/images/charger/num3.png \
	$(LOCAL_PATH)/res/images/charger/num4.png:recovery/root/res/images/charger/num4.png \
	$(LOCAL_PATH)/res/images/charger/num5.png:recovery/root/res/images/charger/num5.png \
	$(LOCAL_PATH)/res/images/charger/num6.png:recovery/root/res/images/charger/num6.png \
	$(LOCAL_PATH)/res/images/charger/num7.png:recovery/root/res/images/charger/num7.png \
	$(LOCAL_PATH)/res/images/charger/num8.png:recovery/root/res/images/charger/num8.png \
	$(LOCAL_PATH)/res/images/charger/num9.png:recovery/root/res/images/charger/num9.png \
	$(LOCAL_PATH)/res/images/charger/percent.png:recovery/root/res/images/charger/percent.png

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_msm8625
PRODUCT_DEVICE := msm8625
