all: autostart.sh battery.lua pulseaudio.lua rc.lua

install: all
	install -d $(HOME)/.config/awesome
	install -t $(HOME)/.config/awesome -m 754 autostart.sh
	install -t $(HOME)/.config/awesome -m 644 battery.lua pulseaudio.lua rc.lua

pulseaudio.lua:
	wget 'https://raw.github.com/orofarne/pulseaudio-awesome/master/pulseaudio.lua'

clean:
	rm -f pulseaudio.lua

.PHONY: install clean
