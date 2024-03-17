all: ti_linkeroo.uf2

ti_linkeroo.uf2: top.sv test/pico_ice/pinout.pcf
	fusesoc run --target=pico_ice kwilke:experiments:ti-linkeroo:1.0.0
	bin2uf2 -o $@ build/kwilke_experiments_ti-linkeroo_1.0.0/pico_ice-icestorm/kwilke_experiments_ti-linkeroo_1.0.0.bin

program: ti_linkeroo.uf2
	cp uart.uf2 /media/kwilke/pico-ice/.

clean:
	rm -rf ti_linkeroo.uf2 build/
