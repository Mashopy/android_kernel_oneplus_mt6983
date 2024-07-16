# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2018-2020 Oplus. All rights reserved.

#ifdef OPLUS_BUG_STABILITY
ifeq ($(CONFIG_KASAN),y)
subdir-ccflags-y += -Wno-format
endif
#endif /* OPLUS_BUG_STABILITY */
obj-$(CONFIG_OPLUS_FEATURE_OPROJECT) 	+= gki_mtk/oplus_project.o

ifeq ($(CONFIG_MTK_SECURITY_SW_SUPPORT), y)
ccflags-y += -I$(srctree)/drivers/misc/mediatek/masp/asfv2/asf_inc
ccflags-y += -I$(srctree)/drivers/misc/mediatek/masp/asfv2/asf_export_inc
ccflags-y += -I$(srctree)/drivers/misc/mediatek/masp/asfv2/module
endif
