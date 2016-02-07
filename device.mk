#
# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Filesystem
PRODUCT_PACKAGES += \
    mkfs.f2fs \
    make_ext4fs \
    resize2fs \
    setup_fs \
    e2fsck_static \
    mke2fs_static \
    resize2fs_static

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.dior \
    init.dior.rc \
    init.dior.usb.rc \
    ueventd.dior.rc

PRODUCT_COPY_FILES += device/xiaomi/dior/recovery.fstab:recovery/root/etc/twrp.fstab
