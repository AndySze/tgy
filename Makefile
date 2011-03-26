all: build

build: tgy.hex

tgy.hex: tgy.asm
	rm -f $@
	avra $<

program: tgy.hex
	avrdude -c dragon_isp -p m8 -P usb -U flash:w:tgy.hex:i
