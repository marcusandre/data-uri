
PREFIX ?= /usr/local
SCRIPT = bin/data-uri

test:
	@bats ${CI:+--tap} ./test/test.bats

install:
	@cp -p $(SCRIPT) $(PREFIX)/$(SCRIPT)

uninstall:
	rm -f $(PREFIX)/$(SCRIPT)

.PHONY: test
