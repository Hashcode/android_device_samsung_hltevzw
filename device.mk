# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product-if-exists, vendor/samsung/hltevzw/hltevzw-vendor.mk)

# NFC
TARGET_NFC_TECH := nxp
PRODUCT_PACKAGES += nfc.MSM8974

# Tiny ALSA bins
PRODUCT_PACKAGES += tinymix tinyplay tinycap

# Device Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/hltevzw/overlay

# common overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/hlte-common/overlay-cdma

# Inherit from hlte-common
$(call inherit-product, device/samsung/hlte-common/hlte-common.mk)
