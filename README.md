# Mali Bifrost support

This driver builds as a module against recent mainline kernels
(5.4+). It brings support for Mali Bifrost GPUs, based on the
[official ARM r8p0-01rel0 Linux driver](https://developer.arm.com/tools-and-software/graphics-and-gaming/mali-drivers/bifrost-kernel).

## Device tree configuration

Device tree bindings are already upstream for [Mali Bifrost drivers](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml).

## Build and installation

You need a cross-compilation toolchain configured properly.

```
git clone https://github.com/bootlin/mali-bifrost.git
cd mali-bifrost
make -j4 KDIR=<linux-sources>
cp $(find -name mali_kbase.ko) <target-directory>
```

A Buildroot package (`MALI_BIFROST_DRIVER`) is available as well.

This driver exports a `/dev/mali0` interface. Vendors usually provide
closed-source Mali libraries to interract with it. For instance,
Rockchip Mali libraries are also bundled in a Buildroot package
(`ROCKCHIP_MALI`).
