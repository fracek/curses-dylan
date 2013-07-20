MELANGE=melange

all: build

.PHONY: build test

curses.dylan: curses.intr
	$(MELANGE) -Tc-ffi curses.intr curses.dylan

build: curses.dylan
	dylan-compiler -build curses

test: curses.dylan
	dylan-compiler -build curses-test-suite-app
	_build/bin/curses-test-suite-app

clean:
	rm -f curses.dylan
	rm -rf _build/bin/curses*
	rm -rf _build/lib/*curses*
	rm -rf _build/build/curses
