EXTENSIONTARGET = ./files/extensions/
EXTENSIONS := $(wildcard $(EXTENSIONTARGET)*)
THEMETARGET = ./files/themes/
THEMES := $(wildcard $(THEMETARGET)*)
DESTDIR = /usr/share/themes/

all:
	@echo Run \'make install\', \'make extensions\', or \'make themes\' to install.
install:
	@gnome-extensions install $(EXTENSIONS)
	@sudo cp -pr $(THEMES) $(DESTDIR)
extensions:
	@gnome-extensions install $(EXTENSIONS)
themes:
	@sudo cp -pr $(THEMES) $(DESTDIR)
