PREFIX ?= /usr/local

.PHONY: install uninstall

install:
	mkdir --mode=755 -p $(PREFIX)/share/man/man7
	gzip -c ext_ascii.7 > $(PREFIX)/share/man/man7/ext_ascii.7.gz
	mandb -c

uninstall:
	rm -f $(PREFIX)/share/man/man7/ext_ascii.7.gz
	mandb -c

