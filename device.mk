#
# Copyright (C) 2018 The LineageOS Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from sony sm8350-common
$(call inherit-product, device/sony/sm8350-common/common.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Overlays
PRODUCT_PACKAGES += \
    SonyPDX215SystemUIRes \
    SonyPDX215FrameworksRes

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/nfc/libnfc-nxp_RF.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp_RF.conf \
    $(LOCAL_PATH)/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys-intf/display

PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
BOARD_USES_QCOM_FBE_DECRYPTION := true
TW_USE_FSCRYPT_POLICY := 2

# TWRP specific build flags
TW_NO_FASTBOOT_BOOT := true
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_Y_OFFSET := 95
TW_H_OFFSET := -95
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TARGET_USES_MKE2FS := true
TW_NO_SCREEN_BLANK := true
TW_HAS_EDL_MODE := false
TW_EXCLUDE_APEX := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/msm-therm/temp"
TW_INCLUDE_FASTBOOTD := true
TW_EXCLUDE_TWRPAPP := true
TW_BACKUP_EXCLUSIONS := /data/fonts/,/data/nandswap
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
TW_HAS_MTP := true

TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 1500
TW_MAX_BRIGHTNESS := 4095

# TW_SUPPORT_INPUT_AIDL_HAPTICS := true
TW_NO_HAPTICS := true

TW_LOAD_VENDOR_MODULES := "adsp_loader_dlkm.ko adux1050.ko apr_dlkm.ko bolero_cdc_dlkm.ko bt_fm_slim.ko btpower.ko bu520x1nvx.ko camera.ko camera_sync.ko cirrus_cs35l41.ko cirrus_cs40l2x_codec.ko cirrus_cs40l2x.ko cirrus_wm_adsp.ko e4000.ko et603-int.ko fc0011.ko fc0012.ko fc0013.ko fc2580.ko hdmi_detect.ko hdmi_dlkm.ko hid-aksys.ko it913x.ko last_logs.ko ldo_vibrator.ko llcc_perfmon.ko m88rs6000t.ko machine_dlkm.ko max2165.ko mbhc_dlkm.ko mc44s803.ko modules.alias modules.blocklist modules.dep modules.load modules.softdep msi001.ko mt2060.ko mt2063.ko mt20xx.ko mt2131.ko mt2266.ko mxl301rf.ko mxl5005s.ko mxl5007t.ko native_dlkm.ko p73.ko pinctrl_lpi_dlkm.ko pinctrl_wcd_dlkm.ko platform_dlkm.ko powerkey_forcecrash.ko q6_dlkm.ko q6_notifier_dlkm.ko q6_pdr_dlkm.ko qca_cld3_wlan.ko qcom_edac.ko qm1d1b0004.ko qm1d1c0042.ko qt1010.ko r820t.ko rdbg.ko rmnet_core.ko rmnet_ctl.ko rmnet_offload.ko rmnet_shs.ko rx_macro_dlkm.ko si2157.ko slg51000-regulator.ko slimbus.ko slimbus-ngd.ko sn1x0.ko snd_event_dlkm.ko somc_battchg_ext.ko somc_battman_dbg.ko sony_camera.ko stub_dlkm.ko swr_ctrl_dlkm.ko swr_dlkm.ko swr_dmic_dlkm.ko swr_haptics_dlkm.ko tcs3490.ko tda18212.ko tda18218.ko tda18250.ko tda9887.ko tea5761.ko tea5767.ko tua9001.ko tuner-simple.ko tuner-types.ko tuner-xc2028.ko tx_macro_dlkm.ko va_macro_dlkm.ko wakeup_irq_debug.ko wcd937x_dlkm.ko wcd937x_slave_dlkm.ko wcd938x_dlkm.ko wcd938x_slave_dlkm.ko wcd9xxx_dlkm.ko wcd_core_dlkm.ko wsa883x_dlkm.ko wsa_macro_dlkm.ko xc4000.ko xc5000.ko"

#aw8697.ko

#Properties
TW_OVERRIDE_SYSTEM_PROPS := \
    "ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental"

TARGET_RECOVERY_DEVICE_MODULES += libion \
    device_manifest.xml \
    system_manifest.xml \
    vendor.display.config@2.0.vendor \
    libdisplayconfig.qti \
    android.hardware.vibrator-sony.service.cs40l25 \
    libdrm.vendor \

# RECOVERY_BINARY_SOURCE_FILES += \
    $(TARGET_OUT_VENDOR_EXECUTABLES)/hw/android.hardware.vibrator-sony.service.cs40l25 \

    #$(TARGET_OUT_VENDOR_EXECUTABLES)/hw/android.hardware.usb.gadget@1.0-service-qti

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/vendor.display.config@2.0.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/libdrm.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/android.hardware.vibrator-sony.impl.cs40l25.so

#PRODUCT_COPY_FILES += \
    vendor/qcom/opensource/vibrator/excluded-input-devices.xml:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/excluded-input-devices.xml \
    vendor/qcom/opensource/vibrator/excluded-input-devices.xml:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/etc/excluded-input-devices.xml

#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*.ko,device/oneplus/sm8350-common/dist,$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules)
#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,modules.*,device/oneplus/sm8350-common/dist,$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules)

PRODUCT_COPY_FILES += \
    $(OUT_DIR)/target/product/pdx215/system/etc/vintf/manifest.xml:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/vintf/manifest.xml \
    $(OUT_DIR)/target/product/pdx215/vendor/etc/vintf/manifest.xml:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/etc/vintf/manifest.xml
