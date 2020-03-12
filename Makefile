obj-m += f_accessory.o

KDIR = /lib/modules/$(shell uname -r)/build

all:
	make -C $(KDIR) M=$(PWD) modules
clean:
	make -C $(KDIR) M=$(PWD) clean
install:
	make -C $(KDIR) M=$(PWD) modules_install
	depmod -A