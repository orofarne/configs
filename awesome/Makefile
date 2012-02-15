all: autostart.sh battery.lua rc.lua

install: all
	install -d $(HOME)/.config/awesome
	install -t $(HOME)/.config/awesome -m 754 autostart.sh
	install -t $(HOME)/.config/awesome -m 644 battery.lua rc.lua
clean:

.PHONY: clean install
