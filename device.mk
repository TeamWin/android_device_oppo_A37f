#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/oppo/A37

# TWRP specific build flags
TW_DEFAULT_LANGUAGE := en-US
TW_NO_USB_STORAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_REMOVABLE_STORAGE := true
TW_MAX_BRIGHTNESS := 100
TW_DEFAULT_BRIGHTNESS := "70"
BOARD_HAS_NO_REAL_SDCARD := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_IGNORE_ABS_MT_TRACKING_ID := true
TW_USE_TOOLBOX := true
TW_CRYPTO_USE_SBIN_VOLD := true
TW_THEME := portrait_hdpi
TW_INPUT_BLACKLIST := "hbtp_vm"

#adbd insecure
BOARD_ALWAYS_INSECURE := true