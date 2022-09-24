EXE=ditab

BINDIR?=/usr/local/bin/
COMPDIR?=/etc/bash_completion.d/

all:
	@echo run make (un)install to (un)install

install:
	install -d $(BINDIR)
	install $(EXE) $(DESTDIR)$(BINDIR)
	install -d $(DESTDIR)$(COMPDIR)
	install bash_completion.d/$(EXE) $(DESTDIR)$(COMPDIR)

uninstall:
	rm -f $(DESTDIR)$(BINDIR)$(EXE)
	rm -f $(DESTDIR)$(COMPDIR)$(EXE)
