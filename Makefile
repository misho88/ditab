EXE=ditab

BINDIR?=/usr/local/bin/
COMPDIR?=/etc/bash_completion.d/

DOC_SOURCES=$(wildcard s6*/doc/s6*.html)
DOC_TARGETS=$(addprefix $(DOC_DIR)/,$(basename $(notdir $(DOC_SOURCES))))

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
