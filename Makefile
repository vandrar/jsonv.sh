PREFIX?=/usr
INSTALLDIR?=$(DESTDIR)$(PREFIX)

install:
	install -v -m755 jsonv          $(INSTALLDIR)/bin/jsonv

	install -d                   /usr/share/jsonv
	install -m755 utils/json.awk /usr/share/jsonv/json.awk
	install -d                   /usr/share/jsonv/examples
	install -m755 examples/*     /usr/share/jsonv/examples/ 	 

uninstall:
	rm -f  $(INSTALLDIR)/bin/jsonv
	rm -rf /usr/share/jsonv
