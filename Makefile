KDIR ?= /lib/modules/`uname -r`/build
INSTALL_MOD_PATH ?= /lib/modules/`uname -r`/extra

DRV := $(PWD)/r8p0/drivers/gpu/arm/midgard

all: modules

modules:
	$(MAKE) -C $(KDIR) M=$(DRV)

clean:
	$(MAKE) -C $(KDIR) M=$(DRV) clean

.PHONY: all modules clean
