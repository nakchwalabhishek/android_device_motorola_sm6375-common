#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

# Motorola QTI SELinux policy, vendored into the device tree because the AOSPA
# hardware/motorola tree does not carry a sepolicy/ directory on any branch.
# Lineage-only domains (vendor.lineage.touch / vendor.lineage.powershare) and
# the hal_attribute_lineage() macro were removed during the port.
SEPOLICY_PLATFORM := $(subst device/qcom/sepolicy_vndr/,,$(SEPOLICY_PATH))

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy/motorola/vendor \
    $(COMMON_PATH)/sepolicy/motorola/vendor/common-um

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy/motorola/private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy/motorola/public
