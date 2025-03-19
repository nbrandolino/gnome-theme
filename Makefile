EXTENSIONTARGET = ./files/extensions
EXTENSIONS := $(wildcard $(EXTENSIONTARGET)/*)
THEMETARGET = ./files/themes
THEMES := $(wildcard $(THEMETARGET)/*)
DESTDIR = /usr/share/themes/

.PHONY: all install extensions themes

all:
	@echo Run \'make install\', \'make extensions\', or \'make themes\' to install.
install: $(EXTENSIONS)
	@for ext in $^; do \
		gnome-extensions install --force "$$ext"; \
	done
	@sudo cp -r $(THEMES) $(DESTDIR)
extensions: $(EXTENSIONS)
	@for ext in $^; do \
		gnome-extensions install --force "$$ext"; \
	done
themes:
	@sudo cp -r $(THEMES) $(DESTDIR)
