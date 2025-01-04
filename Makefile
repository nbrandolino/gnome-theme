EXTENSIONTARGET = ./extensions/
EXTENSIONS := $(wildcard $(EXTENSIONTARGET)*)
THEMETARGET = ./themes/
THEMES := $(wildcard $(THEMETARGET)*)
DESTDIR = /usr/share/themes/

all:
	@echo Run \'make install\', \'make extension\', or \'make theme\' to install.
install:
	@gnome-extensions install $(EXTENSIONS)
	@cp -r $(THEMES) $(DESTDIR)
extension:
	@gnome-extensions install $(EXTENSIONS)
theme:
	@cp -r $(THEMES) $(DESTDIR)
