#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source;C:/ti/simplelink_cc13x0_sdk_3_20_00_23/kernel/tirtos/packages
override XDCROOT = C:/ti/ccs930/xdctools_3_60_02_34_core
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source;C:/ti/simplelink_cc13x0_sdk_3_20_00_23/kernel/tirtos/packages;C:/ti/ccs930/xdctools_3_60_02_34_core/packages;..
HOSTOS = Windows
endif
