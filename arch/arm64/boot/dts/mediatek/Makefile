# SPDX-License-Identifier: GPL-2.0
dtb-$(CONFIG_ARCH_MEDIATEK)  += mt6983.dtb
dtbo-$(CONFIG_ARCH_MEDIATEK) += \
    k6983v1_64.dtbo \
    oplus6983_21007.dtbo \
    oplus6983_22021.dtbo \
    oplus6983_22021_EVB.dtbo \
    oplus6983_22823.dtbo \
    oplus6983_22921.dtbo

always-y        := $(dtb-y) $(dtbo-y)
subdir-y        := $(dts-dirs)
clean-files     := *.dtb *.dtbo
