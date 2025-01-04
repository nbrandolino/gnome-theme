EXTENSIONTARGET = ./extensions/
EXTENSIONS := $(wildcard $(EXTENSIONTARGET)*)
THEMETARGET = ./themes/
THEMES := $(wildcard $(THEMETARGET)*)
DESTDIR = /usr/share/themes/

all:
	@echo Run \'make install\', \'make extension\', or \'make theme\' to install.
install:
	@cp -r $(THEMES) $(DESTDIR)
	@file $(EXTENSIONS)
extension:
	@echo $(EXTENSIONS)
theme:
	@echo $(THEMES)
