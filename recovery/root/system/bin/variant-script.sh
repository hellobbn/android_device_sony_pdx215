#!/system/bin/sh
# automatically set device props for unified tree shared-hardware models/variants


load_pdx215()
{
    resetprop "ro.build.product" "XQ-BC72"
    resetprop "ro.display.series" "XQ-BC72"
    resetprop "ro.product.device" "XQ-BC72"
    resetprop "ro.product.model" "XQ-BC72"
    resetprop "ro.product.name" "XQ-BC72"
    resetprop "ro.product.odm.device" "XQ-BC72"
    resetprop "ro.product.odm.model" "XQ-BC72"
    resetprop "ro.product.odm.name" "XQ-BC72"
    resetprop "ro.product.product.device" "XQ-BC72"
    resetprop "ro.product.product.model" "XQ-BC72"
    resetprop "ro.product.product.name" "XQ-BC72"
    resetprop "ro.product.system.device" "XQ-BC72"
    resetprop "ro.product.system.model" "XQ-BC72"
    resetprop "ro.product.system.name" "XQ-BC72"
    resetprop "ro.product.system_ext.device" "XQ-BC72"
    resetprop "ro.product.system_ext.model" "XQ-BC72"
    resetprop "ro.product.system_ext.name" "XQ-BC72"
    resetprop "ro.product.vendor.device" "XQ-BC72"
    resetprop "ro.product.vendor.model" "XQ-BC72"
    resetprop "ro.product.vendor.name" "XQ-BC72"
}

project=$(getprop ro.boot.project_codename)
echo "Running unified/variant script with $project..." >> /tmp/recovery.log

load_pdx215

exit 0


