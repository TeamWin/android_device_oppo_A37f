#
# Copyright (C) 2016 The Android Open Source Project
# Copyright (C) 2016 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)


PRODUCT_PACKAGES += \
    charger_res_images \
    charger
    
# Explicitly
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8916

# The kernel does not support aio with ffs.
PRODUCT_PROPERTY_OVERRIDES += \
	sys.usb.ffs.aio_compat=1    

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A37
PRODUCT_NAME := omni_A37
PRODUCT_BRAND := Oppo
PRODUCT_MODEL := A37
PRODUCT_MANUFACTURER := Oppo
PRODUCT_RELEASE_NAME := Oppo A37

# Enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=A37 \
    ro.product.device=A37 \
    ro.product.model=A37

ALLOW_MISSING_DEPENDENCIES := true
