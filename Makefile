MODNAME =$(shell grep \"name\"\: info.json | cut -f4 -d\")
VERSION = $(shell grep \"version\"\: info.json | cut -f4 -d\")
PACKAGE_NAME= $(MODNAME)_$(VERSION)
FACTORIO_DIR= $(HOME)/.factorio




.PHONY: clean install package uninstall setup

setup: 
	mkdir -p locale/en


package: info.json *.lua prototypes locale
	mkdir -p $(PACKAGE_NAME)
	cp -rvu $^ $(PACKAGE_NAME)
	zip -vr $(PACKAGE_NAME).zip $(PACKAGE_NAME)

clean:
	rm -rfv $(MODNAME)_*

install: package
	cp -vf $(PACKAGE_NAME).zip $(FACTORIO_DIR)/mods
	
uninstall: 
	rm -rvf $(FACTORIO_DIR)/mods/$(MODNAME)_*.zip
