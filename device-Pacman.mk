#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the custom common configuration.
$(call inherit-product, device/nothing/Aerodactyl/device-common.mk)

# NT Camera
$(call inherit-product, vendor/nothing/camera/nothing-camera.mk)

PRODUCT_COPY_FILES += \
    vendor/nothing/camera/proprietary/system/etc/permissions/NTCamera-permissions.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/NTCamera-permissions.xml \
    vendor/nothing/camera/proprietary/system/etc/permissions/NTCamera-google-permissions.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/NTCamera-google-permissions.xml \
    vendor/nothing/camera/proprietary/system/etc/permissions/privapp-permissions-NothingExperience.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/privapp-permissions-NothingExperience.xml \
    vendor/nothing/Spacewar/proprietary/vendor/etc/camera/vidhance_calibration:$(TARGET_COPY_OUT_VENDOR)/etc/camera/vidhance_calibration \
    vendor/nothing/Spacewar/proprietary/vendor/etc/camera/camera_feature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camera_feature.xml \
    vendor/nothing/Spacewar/proprietary/vendor/etc/camera/camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camera_config.xml

# Overlays
PRODUCT_PACKAGES += \
    NothingWifiResPacman

# Properties
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/skus/nonPro/,$(TARGET_COPY_OUT_ODM)/etc)

# Inherit the proprietary files
$(call inherit-product, vendor/nothing/Pacman/Pacman-vendor.mk)
