# DELL S4000 Series
# CPU Module: Intel Atom Rangeley (C2338)

ONIE_ARCH ?= x86_64

VENDOR_REV ?= 0

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
# DELL IANA number
VENDOR_ID = 674

I2CTOOLS_ENABLE = yes
I2CTOOLS_SYSEEPROM = no

# This platform requires the PXE_EFI64 installer
PXE_EFI64_ENABLE = yes

CONSOLE_SPEED = 115200
CONSOLE_DEV = 0
CONSOLE_FLAG = 0

EXTRA_CMDLINE_LINUX = i2c-ismt.bus_speed=100

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
