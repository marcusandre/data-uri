
PREFIX ?= /usr/local
SCRIPT = bin/data-uri

install:
	@cp -p $(SCRIPT) $(PREFIX)/$(SCRIPT)

uninstall:
	rm -f $(PREFIX)/$(SCRIPT)

.PHONY: install uninstall
